package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;

public final class zzx extends Thread {
    private final BlockingQueue<zzab<?>> zzah;
    private final zzu zzai;
    private final zzk zzn;
    private final zzal zzo;
    private volatile boolean zzp = false;

    public zzx(BlockingQueue<zzab<?>> blockingQueue, zzu zzu, zzk zzk, zzal zzal) {
        this.zzah = blockingQueue;
        this.zzai = zzu;
        this.zzn = zzk;
        this.zzo = zzal;
    }

    private final void processRequest() {
        zzab<?> take = this.zzah.take();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        take.zzd(3);
        try {
            take.zzc("network-queue-take");
            take.isCanceled();
            TrafficStats.setThreadStatsTag(take.zzd());
            zzz zza = this.zzai.zza(take);
            take.zzc("network-http-complete");
            if (!zza.zzak || !take.zzl()) {
                zzag<?> zza2 = take.zza(zza);
                take.zzc("network-parse-complete");
                if (take.zzh() && zza2.zzbq != null) {
                    this.zzn.zza(take.zze(), zza2.zzbq);
                    take.zzc("network-cache-written");
                }
                take.zzk();
                this.zzo.zza(take, zza2);
                take.zza(zza2);
                take.zzd(4);
                return;
            }
            take.zzd("not-modified");
            take.zzm();
        } catch (zzap e) {
            e.zza(SystemClock.elapsedRealtime() - elapsedRealtime);
            this.zzo.zza(take, e);
            take.zzm();
        } catch (Exception e2) {
            zzao.zza(e2, "Unhandled exception %s", e2.toString());
            zzap zzap = new zzap(e2);
            zzap.zza(SystemClock.elapsedRealtime() - elapsedRealtime);
            this.zzo.zza(take, zzap);
            take.zzm();
        } finally {
            take.zzd(4);
        }
    }

    public final void quit() {
        this.zzp = true;
        interrupt();
    }

    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                processRequest();
            } catch (InterruptedException unused) {
                if (this.zzp) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzao.e("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
