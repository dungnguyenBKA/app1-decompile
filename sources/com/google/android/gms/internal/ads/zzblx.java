package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
import java.util.concurrent.Executor;

final class zzblx extends zzblv {
    private final Context context;
    private final View view;
    private final zzbeb zzdjd;
    private final Executor zzfsj;
    private final zzdmz zzftn;
    private final zzbnu zzfuo;
    private final zzcco zzfup;
    private final zzbye zzfuq;
    private final zzepv<zzcxs> zzfur;
    private zzvs zzfus;

    zzblx(zzbnw zzbnw, Context context2, zzdmz zzdmz, View view2, zzbeb zzbeb, zzbnu zzbnu, zzcco zzcco, zzbye zzbye, zzepv<zzcxs> zzepv, Executor executor) {
        super(zzbnw);
        this.context = context2;
        this.view = view2;
        this.zzdjd = zzbeb;
        this.zzftn = zzdmz;
        this.zzfuo = zzbnu;
        this.zzfup = zzcco;
        this.zzfuq = zzbye;
        this.zzfur = zzepv;
        this.zzfsj = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzblv
    public final zzzc getVideoController() {
        try {
            return this.zzfuo.getVideoController();
        } catch (zzdnt unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzblv
    public final void zza(ViewGroup viewGroup, zzvs zzvs) {
        zzbeb zzbeb;
        if (viewGroup != null && (zzbeb = this.zzdjd) != null) {
            zzbeb.zza(zzbft.zzb(zzvs));
            viewGroup.setMinimumHeight(zzvs.heightPixels);
            viewGroup.setMinimumWidth(zzvs.widthPixels);
            this.zzfus = zzvs;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzblv
    public final zzdmz zzajq() {
        boolean z;
        zzvs zzvs = this.zzfus;
        if (zzvs != null) {
            return zzdnu.zzh(zzvs);
        }
        zzdmw zzdmw = this.zzesr;
        if (zzdmw.zzhjt) {
            Iterator<String> it = zzdmw.zzhix.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                String next = it.next();
                if (next != null && next.contains("FirstParty")) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                return new zzdmz(this.view.getWidth(), this.view.getHeight(), false);
            }
        }
        return zzdnu.zza(this.zzesr.zzhjf, this.zzftn);
    }

    @Override // com.google.android.gms.internal.ads.zzblv
    public final View zzajr() {
        return this.view;
    }

    @Override // com.google.android.gms.internal.ads.zzblv
    public final zzdmz zzajz() {
        return this.zzftn;
    }

    @Override // com.google.android.gms.internal.ads.zzblv
    public final int zzaka() {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczh)).booleanValue() && this.zzesr.zzhjx) {
            if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzczi)).booleanValue()) {
                return 0;
            }
        }
        return this.zzfrd.zzhks.zzess.zzhkg;
    }

    @Override // com.google.android.gms.internal.ads.zzbnt
    public final void zzakb() {
        this.zzfsj.execute(new zzbma(this));
        super.zzakb();
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzakc() {
        if (this.zzfup.zzaom() != null) {
            try {
                this.zzfup.zzaom().zza(this.zzfur.get(), aw.Q(this.context));
            } catch (RemoteException e) {
                zzazk.zzc("RemoteException when notifyAdLoad is called", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzblv
    public final void zzkf() {
        this.zzfuq.zzamr();
    }
}
