package com.google.android.gms.internal.ads;

import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.concurrent.Executor;

/* access modifiers changed from: package-private */
public final class zzdjg implements zzdzl<zzblv> {
    private final /* synthetic */ zzcze zzgzg;
    private final /* synthetic */ zzbmr zzhgk;
    final /* synthetic */ zzdje zzhgl;

    zzdjg(zzdje zzdje, zzcze zzcze, zzbmr zzbmr) {
        this.zzhgl = zzdje;
        this.zzgzg = zzcze;
        this.zzhgk = zzbmr;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(zzblv zzblv) {
        zzblv zzblv2 = zzblv;
        synchronized (this.zzhgl) {
            this.zzhgl.zzhgj = null;
            this.zzhgl.zzfum.removeAllViews();
            if (zzblv2.zzajr() != null) {
                ViewParent parent = zzblv2.zzajr().getParent();
                if (parent instanceof ViewGroup) {
                    String str = "";
                    if (zzblv2.zzakr() != null) {
                        str = zzblv2.zzakr().getMediationAdapterClassName();
                    }
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 78);
                    sb.append("Banner view provided from ");
                    sb.append(str);
                    sb.append(" already has a parent view. Removing its old parent.");
                    zzazk.zzex(sb.toString());
                    ((ViewGroup) parent).removeView(zzblv2.zzajr());
                }
            }
            zzaba<Boolean> zzaba = zzabp.zzczs;
            if (((Boolean) zzwr.zzqr().zzd(zzaba)).booleanValue()) {
                zzblv2.zzakt().zza(this.zzhgl.zzgxy).zza(this.zzhgl.zzhgg);
            }
            this.zzhgl.zzfum.addView(zzblv2.zzajr());
            this.zzgzg.onSuccess(zzblv2);
            if (((Boolean) zzwr.zzqr().zzd(zzaba)).booleanValue()) {
                Executor executor = this.zzhgl.zzfsj;
                zzcxy zzcxy = this.zzhgl.zzgxy;
                zzcxy.getClass();
                executor.execute(zzdjj.zzb(zzcxy));
            }
            this.zzhgl.zzhgi.zzdx(zzblv2.zzaka());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        zzvg zze = this.zzhgk.zzagj().zze(th);
        synchronized (this.zzhgl) {
            this.zzhgl.zzhgj = null;
            this.zzhgk.zzagk().zzc(zze);
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczs)).booleanValue()) {
                this.zzhgl.zzfsj.execute(new zzdji(this, zze));
            }
            this.zzhgl.zzhgi.zzdx(60);
            zzdod.zza(zze.errorCode, th, "BannerAdLoader.onFailure");
            this.zzgzg.zzasi();
        }
    }
}
