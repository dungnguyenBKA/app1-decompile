package com.google.android.gms.internal.gtm;

import android.os.Handler;
import java.util.Objects;

/* access modifiers changed from: package-private */
public abstract class zzcw {
    private static volatile Handler zza;
    private final zzbv zzb;
    private final Runnable zzc = new zzcv(this);
    private volatile long zzd;

    zzcw(zzbv zzbv) {
        Objects.requireNonNull(zzbv, "null reference");
        this.zzb = zzbv;
    }

    private final Handler zzi() {
        Handler handler;
        if (zza != null) {
            return zza;
        }
        synchronized (zzcw.class) {
            if (zza == null) {
                zza = new zzga(this.zzb.zza().getMainLooper());
            }
            handler = zza;
        }
        return handler;
    }

    public abstract void zza();

    public final long zzb() {
        if (this.zzd == 0) {
            return 0;
        }
        return Math.abs(this.zzb.zzr().a() - this.zzd);
    }

    public final void zze(long j) {
        if (zzh()) {
            long j2 = 0;
            if (j < 0) {
                zzf();
                return;
            }
            long abs = j - Math.abs(this.zzb.zzr().a() - this.zzd);
            if (abs >= 0) {
                j2 = abs;
            }
            zzi().removeCallbacks(this.zzc);
            if (!zzi().postDelayed(this.zzc, j2)) {
                this.zzb.zzm().zzK("Failed to adjust delayed post. time", Long.valueOf(j2));
            }
        }
    }

    public final void zzf() {
        this.zzd = 0;
        zzi().removeCallbacks(this.zzc);
    }

    public final void zzg(long j) {
        zzf();
        if (j >= 0) {
            this.zzd = this.zzb.zzr().a();
            if (!zzi().postDelayed(this.zzc, j)) {
                this.zzb.zzm().zzK("Failed to schedule delayed post. time", Long.valueOf(j));
            }
        }
    }

    public final boolean zzh() {
        return this.zzd != 0;
    }
}
