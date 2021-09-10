package com.google.android.gms.internal.gtm;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.SystemClock;
import com.google.android.gms.analytics.a;
import com.google.android.gms.analytics.q;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.util.d;
import com.google.android.gms.common.util.f;
import java.util.Objects;

@SuppressLint({"StaticFieldLeak"})
public final class zzbv {
    private static volatile zzbv zza;
    private final Context zzb;
    private final Context zzc;
    private final d zzd = f.d();
    private final zzct zze = new zzct(this);
    private final zzfb zzf;
    private final q zzg;
    private final zzbq zzh;
    private final zzcy zzi;
    private final zzft zzj;
    private final zzfh zzk;
    private final a zzl;
    private final zzcn zzm;
    private final zzbi zzn;
    private final zzcf zzo;
    private final zzcx zzp;

    protected zzbv(zzbw zzbw) {
        Context zza2 = zzbw.zza();
        n.i(zza2, "Application context can't be null");
        Context zzb2 = zzbw.zzb();
        Objects.requireNonNull(zzb2, "null reference");
        this.zzb = zza2;
        this.zzc = zzb2;
        zzfb zzfb = new zzfb(this);
        zzfb.zzX();
        this.zzf = zzfb;
        zzfb zzm2 = zzm();
        String str = zzbt.zza;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 134);
        sb.append("Google Analytics ");
        sb.append(str);
        sb.append(" is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4");
        zzm2.zzM(sb.toString());
        zzfh zzfh = new zzfh(this);
        zzfh.zzX();
        this.zzk = zzfh;
        zzft zzft = new zzft(this);
        zzft.zzX();
        this.zzj = zzft;
        zzbq zzbq = new zzbq(this, zzbw);
        zzcn zzcn = new zzcn(this);
        zzbi zzbi = new zzbi(this);
        zzcf zzcf = new zzcf(this);
        zzcx zzcx = new zzcx(this);
        q b = q.b(zza2);
        b.j(new zzbu(this));
        this.zzg = b;
        a aVar = new a(this);
        zzcn.zzX();
        this.zzm = zzcn;
        zzbi.zzX();
        this.zzn = zzbi;
        zzcf.zzX();
        this.zzo = zzcf;
        zzcx.zzX();
        this.zzp = zzcx;
        zzcy zzcy = new zzcy(this);
        zzcy.zzX();
        this.zzi = zzcy;
        zzbq.zzX();
        this.zzh = zzbq;
        aVar.i();
        this.zzl = aVar;
        zzbq.zzm();
    }

    public static zzbv zzg(Context context) {
        Objects.requireNonNull(context, "null reference");
        if (zza == null) {
            synchronized (zzbv.class) {
                try {
                    if (zza == null) {
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        zzbv zzbv = new zzbv(new zzbw(context));
                        zza = zzbv;
                        a.h();
                        long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
                        long longValue = zzeu.zzQ.zzb().longValue();
                        if (elapsedRealtime2 > longValue) {
                            zzbv.zzm().zzT("Slow initialization (ms)", Long.valueOf(elapsedRealtime2), Long.valueOf(longValue));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zza;
    }

    private static final void zzs(zzbs zzbs) {
        n.i(zzbs, "Analytics service not created/initialized");
        n.b(zzbs.zzY(), "Analytics service not initialized");
    }

    public final Context zza() {
        return this.zzb;
    }

    public final Context zzb() {
        return this.zzc;
    }

    public final a zzc() {
        Objects.requireNonNull(this.zzl, "null reference");
        n.b(this.zzl.j(), "Analytics instance not initialized");
        return this.zzl;
    }

    public final q zzd() {
        Objects.requireNonNull(this.zzg, "null reference");
        return this.zzg;
    }

    public final zzbi zze() {
        zzs(this.zzn);
        return this.zzn;
    }

    public final zzbq zzf() {
        zzs(this.zzh);
        return this.zzh;
    }

    public final zzcf zzh() {
        zzs(this.zzo);
        return this.zzo;
    }

    public final zzcn zzi() {
        zzs(this.zzm);
        return this.zzm;
    }

    public final zzct zzj() {
        return this.zze;
    }

    public final zzcx zzk() {
        return this.zzp;
    }

    public final zzcy zzl() {
        zzs(this.zzi);
        return this.zzi;
    }

    public final zzfb zzm() {
        zzs(this.zzf);
        return this.zzf;
    }

    public final zzfb zzn() {
        return this.zzf;
    }

    public final zzfh zzo() {
        zzs(this.zzk);
        return this.zzk;
    }

    public final zzfh zzp() {
        zzfh zzfh = this.zzk;
        if (zzfh == null || !zzfh.zzY()) {
            return null;
        }
        return this.zzk;
    }

    public final zzft zzq() {
        zzs(this.zzj);
        return this.zzj;
    }

    public final d zzr() {
        return this.zzd;
    }
}
