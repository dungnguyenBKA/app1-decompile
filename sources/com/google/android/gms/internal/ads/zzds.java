package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class zzds implements zzdy {
    private static zzds zzvn;
    private final Context context;
    private final zzdus zzvo;
    private final zzdux zzvp;
    private final zzdvc zzvq;
    private final zzex zzvr;
    private final zzdsy zzvs;
    private final Executor zzvt;
    private final zzgp zzvu;
    private final zzduy zzvv;
    private volatile long zzvw = 0;
    private final Object zzvx = new Object();
    private volatile boolean zzvy;

    private zzds(Context context2, zzdsy zzdsy, zzdus zzdus, zzdux zzdux, zzdvc zzdvc, zzex zzex, Executor executor, zzdsx zzdsx, zzgp zzgp) {
        this.context = context2;
        this.zzvs = zzdsy;
        this.zzvo = zzdus;
        this.zzvp = zzdux;
        this.zzvq = zzdvc;
        this.zzvr = zzex;
        this.zzvt = executor;
        this.zzvu = zzgp;
        this.zzvv = new zzdu(this, zzdsx);
    }

    public static synchronized zzds zza(String str, Context context2, boolean z) {
        zzds zzds;
        synchronized (zzds.class) {
            if (zzvn == null) {
                zzdtc zzaxo = zzdtc.zzaxr().zzhe(str).zzbo(z).zzaxo();
                ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
                zzds zza = zza(context2, zzdsy.zza(context2, newCachedThreadPool), zzaxo, newCachedThreadPool);
                zzvn = zza;
                zza.zzbq();
                zzvn.zzbt();
            }
            zzds = zzvn;
        }
        return zzds;
    }

    /* access modifiers changed from: private */
    public final void zzbs() {
        String str;
        String str2;
        zzdup zzp;
        zzgv zzayk;
        long currentTimeMillis = System.currentTimeMillis();
        int i = zzdva.zzhut;
        zzdup zzp2 = zzp(i);
        if (zzp2 != null) {
            String zzdg = zzp2.zzayk().zzdg();
            str = zzp2.zzayk().zzdh();
            str2 = zzdg;
        } else {
            str2 = null;
            str = null;
        }
        try {
            zzduw zza = zzdtk.zza(this.context, 1, this.zzvu, str2, str, "1", this.zzvs);
            byte[] bArr = zza.zzhun;
            if (bArr == null || bArr.length == 0) {
                this.zzvs.zzh(5009, System.currentTimeMillis() - currentTimeMillis);
                return;
            }
            try {
                zzgr zza2 = zzgr.zza(zzejr.zzt(bArr), zzeko.zzbhw());
                boolean z = true;
                boolean z2 = false;
                if (zza2.zzdc().zzdg().isEmpty() || zza2.zzdc().zzdh().isEmpty() || zza2.zzde().toByteArray().length == 0 || ((zzp = zzp(i)) != null && (zzayk = zzp.zzayk()) != null && zza2.zzdc().zzdg().equals(zzayk.zzdg()) && zza2.zzdc().zzdh().equals(zzayk.zzdh()))) {
                    z = false;
                }
                if (!z) {
                    this.zzvs.zzh(5010, System.currentTimeMillis() - currentTimeMillis);
                    return;
                }
                zzduy zzduy = this.zzvv;
                int i2 = zza.status;
                if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcrr)).booleanValue()) {
                    z2 = this.zzvo.zza(zza2, zzduy);
                } else if (i2 == 3) {
                    z2 = this.zzvp.zza(zza2);
                } else if (i2 == 4) {
                    z2 = this.zzvp.zza(zza2, zzduy);
                }
                if (!z2) {
                    this.zzvs.zzh(4009, System.currentTimeMillis() - currentTimeMillis);
                    return;
                }
                zzdup zzp3 = zzp(i);
                if (zzp3 != null) {
                    this.zzvq.zzb(zzp3);
                    this.zzvw = System.currentTimeMillis() / 1000;
                }
            } catch (NullPointerException unused) {
                this.zzvs.zzh(2030, System.currentTimeMillis() - currentTimeMillis);
            }
        } catch (zzelo e) {
            this.zzvs.zza(4002, System.currentTimeMillis() - currentTimeMillis, e);
        }
    }

    private final zzdup zzp(int i) {
        if (!zzdue.zza(this.zzvu)) {
            return null;
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcrr)).booleanValue()) {
            return this.zzvp.zzp(i);
        }
        return this.zzvo.zzp(i);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final void zza(int i, int i2, int i3) {
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final void zzb(View view) {
        this.zzvr.zzc(view);
    }

    /* access modifiers changed from: package-private */
    public final synchronized void zzbq() {
        long currentTimeMillis = System.currentTimeMillis();
        zzdup zzp = zzp(zzdva.zzhut);
        if (zzp != null) {
            this.zzvq.zzb(zzp);
        } else {
            this.zzvs.zzh(4013, System.currentTimeMillis() - currentTimeMillis);
        }
    }

    public final void zzbr() {
        if (zzdue.zza(this.zzvu)) {
            this.zzvt.execute(new zzdt(this));
        }
    }

    public final void zzbt() {
        if (!this.zzvy) {
            synchronized (this.zzvx) {
                if (!this.zzvy) {
                    if ((System.currentTimeMillis() / 1000) - this.zzvw >= 3600) {
                        zzdup zzayw = this.zzvq.zzayw();
                        if (zzayw == null || zzayw.zzff(3600)) {
                            zzbr();
                        }
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final String zzb(Context context2) {
        zzbt();
        zzdte zzayv = this.zzvq.zzayv();
        if (zzayv == null) {
            return "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        String zzs = zzayv.zzs(context2, null);
        this.zzvs.zza(5001, System.currentTimeMillis() - currentTimeMillis, zzs, null);
        return zzs;
    }

    static zzds zza(Context context2, zzdsy zzdsy, zzdtc zzdtc) {
        return zza(context2, zzdsy, zzdtc, Executors.newCachedThreadPool());
    }

    private static zzds zza(Context context2, zzdsy zzdsy, zzdtc zzdtc, Executor executor) {
        zzdto zza = zzdto.zza(context2, executor, zzdsy, zzdtc);
        zzfa zzfa = new zzfa(context2);
        zzex zzex = new zzex(zzdtc, zza, new zzfj(context2, zzfa), zzfa);
        zzgp zzayg = new zzdue(context2, zzdsy).zzayg();
        zzdsx zzdsx = new zzdsx();
        return new zzds(context2, zzdsy, new zzdus(context2, zzayg), new zzdux(context2, zzayg, new zzdr(zzdsy), ((Boolean) zzwr.zzqr().zzd(zzabp.zzcrt)).booleanValue()), new zzdvc(context2, zzex, zzdsy, zzdsx), zzex, executor, zzdsx, zzayg);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final void zza(MotionEvent motionEvent) {
        zzdte zzayv = this.zzvq.zzayv();
        if (zzayv != null) {
            try {
                zzayv.zza(null, motionEvent);
            } catch (zzduz e) {
                this.zzvs.zza(e.zzayu(), -1, e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final String zza(Context context2, String str, View view, Activity activity) {
        zzbt();
        zzdte zzayv = this.zzvq.zzayv();
        if (zzayv == null) {
            return "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        String zza = zzayv.zza(context2, null, str, view, activity);
        this.zzvs.zza(5000, System.currentTimeMillis() - currentTimeMillis, zza, null);
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final String zza(Context context2, String str, View view) {
        return zza(context2, str, view, (Activity) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final String zza(Context context2, View view, Activity activity) {
        zzbt();
        zzdte zzayv = this.zzvq.zzayv();
        if (zzayv == null) {
            return "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        String zzb = zzayv.zzb(context2, null, view, activity);
        this.zzvs.zza(5002, System.currentTimeMillis() - currentTimeMillis, zzb, null);
        return zzb;
    }
}
