package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzar;
import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class zzakz {
    private final Context context;
    private final Object lock;
    private int status;
    private final zzazn zzbpn;
    private final String zzdjn;
    private zzar<zzakm> zzdjo;
    private zzar<zzakm> zzdjp;
    private zzalq zzdjq;

    private zzakz(Context context2, zzazn zzazn, String str) {
        this.lock = new Object();
        this.status = 1;
        this.zzdjn = str;
        this.context = context2.getApplicationContext();
        this.zzbpn = zzazn;
        this.zzdjo = new zzaln();
        this.zzdjp = new zzaln();
    }

    /* access modifiers changed from: protected */
    public final zzalq zza(zzei zzei) {
        zzalq zzalq = new zzalq(this.zzdjp);
        zzazp.zzeig.execute(new zzaky(this, zzei, zzalq));
        zzalq.zza(new zzali(this, zzalq), new zzall(this, zzalq));
        return zzalq;
    }

    public final zzalm zzb(zzei zzei) {
        synchronized (this.lock) {
            synchronized (this.lock) {
                zzalq zzalq = this.zzdjq;
                if (zzalq != null && this.status == 0) {
                    zzalq.zza(new zzalb(this), zzala.zzdjr);
                }
            }
            zzalq zzalq2 = this.zzdjq;
            if (zzalq2 == null || zzalq2.getStatus() == -1) {
                this.status = 2;
                zzalq zza = zza((zzei) null);
                this.zzdjq = zza;
                return zza.zzum();
            }
            int i = this.status;
            if (i == 0) {
                return this.zzdjq.zzum();
            } else if (i == 1) {
                this.status = 2;
                zza((zzei) null);
                return this.zzdjq.zzum();
            } else if (i == 2) {
                return this.zzdjq.zzum();
            } else {
                return this.zzdjq.zzum();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zza(zzakm zzakm) {
        if (zzakm.isDestroyed()) {
            this.status = 1;
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zza(zzei zzei, zzalq zzalq) {
        try {
            zzako zzako = new zzako(this.context, this.zzbpn, zzei, null);
            zzako.zza(new zzald(this, zzalq, zzako));
            zzako.zza("/jsLoaded", new zzale(this, zzalq, zzako));
            zzbs zzbs = new zzbs();
            zzalh zzalh = new zzalh(this, zzei, zzako, zzbs);
            zzbs.set(zzalh);
            zzako.zza("/requestReload", zzalh);
            if (this.zzdjn.endsWith(".js")) {
                zzako.zzcw(this.zzdjn);
            } else if (this.zzdjn.startsWith("<html>")) {
                zzako.zzcy(this.zzdjn);
            } else {
                zzako.zzcx(this.zzdjn);
            }
            zzj.zzeen.postDelayed(new zzalg(this, zzalq, zzako), (long) zzalk.zzdkb);
        } catch (Throwable th) {
            zzazk.zzc("Error creating webview.", th);
            zzr.zzkv().zza(th, "SdkJavascriptFactory.loadJavascriptEngine");
            zzalq.reject();
        }
    }

    public zzakz(Context context2, zzazn zzazn, String str, zzar<zzakm> zzar, zzar<zzakm> zzar2) {
        this(context2, zzazn, str);
        this.zzdjo = zzar;
        this.zzdjp = zzar2;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zza(zzalq zzalq, zzakm zzakm) {
        synchronized (this.lock) {
            if (zzalq.getStatus() != -1) {
                if (zzalq.getStatus() != 1) {
                    zzalq.reject();
                    zzdzv zzdzv = zzazp.zzeig;
                    zzakm.getClass();
                    zzdzv.execute(zzalf.zzb(zzakm));
                    zzd.zzeb("Could not receive loaded message in a timely manner. Rejecting.");
                }
            }
        }
    }
}
