package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Executor;
import org.json.JSONObject;

public final class zzcfi {
    private final Executor zzfsj;
    private final zzdnp zzfwy;
    private final zzchq zzggk;

    public zzcfi(zzdnp zzdnp, Executor executor, zzchq zzchq) {
        this.zzfwy = zzdnp;
        this.zzfsj = executor;
        this.zzggk = zzchq;
    }

    private final void zzh(zzbeb zzbeb) {
        zzbeb.zza("/video", zzahm.zzdhn);
        zzbeb.zza("/videoMeta", zzahm.zzdho);
        zzbeb.zza("/precache", new zzbdm());
        zzbeb.zza("/delayPageLoaded", zzahm.zzdhr);
        zzbeb.zza("/instrument", zzahm.zzdhp);
        zzbeb.zza("/log", zzahm.zzdhi);
        zzbeb.zza("/videoClicked", zzahm.zzdhj);
        zzbeb.zzacx().zzbc(true);
        zzbeb.zza("/click", zzahm.zzdhe);
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcsz)).booleanValue()) {
            zzbeb.zza("/getNativeAdViewSignals", zzahm.zzdhu);
        }
        if (this.zzfwy.zzdvt != null) {
            zzbeb.zzacx().zzbd(true);
            zzbeb.zza("/open", new zzaij(null, null, null, null, null));
        } else {
            zzbeb.zzacx().zzbd(false);
        }
        if (zzr.zzlp().zzy(zzbeb.getContext())) {
            zzbeb.zza("/logScionEvent", new zzaih(zzbeb.getContext()));
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zza(String str, String str2, Object obj) {
        zzbeb zza = this.zzggk.zza(zzvs.zzqe(), null, null);
        zzazx zzk = zzazx.zzk(zza);
        zzh(zza);
        if (this.zzfwy.zzdvt != null) {
            zza.zza(zzbft.zzaen());
        } else {
            zza.zza(zzbft.zzaem());
        }
        zza.zzacx().zza(new zzcfl(this, zza, zzk));
        zza.zzb(str, str2, null);
        return zzk;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(zzbeb zzbeb, zzazx zzazx, boolean z) {
        if (!(this.zzfwy.zzhkv == null || zzbeb.zzabc() == null)) {
            zzbeb.zzabc().zzb(this.zzfwy.zzhkv);
        }
        zzazx.zzaac();
    }

    public final zzdzw<zzbeb> zzn(JSONObject jSONObject) {
        return zzdzk.zzb(zzdzk.zzb(zzdzk.zzag(null), new zzcfj(this), this.zzfsj), new zzcfh(this, jSONObject), this.zzfsj);
    }

    public final zzdzw<zzbeb> zzo(String str, String str2) {
        return zzdzk.zzb(zzdzk.zzag(null), new zzcfk(this, str, str2), this.zzfsj);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zzq(Object obj) {
        zzbeb zza = this.zzggk.zza(zzvs.zzqe(), null, null);
        zzazx zzk = zzazx.zzk(zza);
        zzh(zza);
        zza.zzacx().zza(new zzcfm(zzk));
        zza.loadUrl((String) zzwr.zzqr().zzd(zzabp.zzcsy));
        return zzk;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zza(zzbeb zzbeb, zzazx zzazx, boolean z) {
        if (z) {
            if (!(this.zzfwy.zzhkv == null || zzbeb.zzabc() == null)) {
                zzbeb.zzabc().zzb(this.zzfwy.zzhkv);
            }
            zzazx.zzaac();
            return;
        }
        zzazx.setException(new zzcva(zzdom.INTERNAL_ERROR, "Instream video Web View failed to load."));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zza(JSONObject jSONObject, zzbeb zzbeb) {
        zzazx zzk = zzazx.zzk(zzbeb);
        if (this.zzfwy.zzdvt != null) {
            zzbeb.zza(zzbft.zzaen());
        } else {
            zzbeb.zza(zzbft.zzaem());
        }
        zzbeb.zzacx().zza(new zzcfo(this, zzbeb, zzk));
        zzbeb.zzb("google.afma.nativeAds.renderVideo", jSONObject);
        return zzk;
    }
}
