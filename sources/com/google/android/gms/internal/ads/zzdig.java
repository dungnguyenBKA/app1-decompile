package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzdig implements zzdzl<AppOpenAd> {
    private final /* synthetic */ zzcze zzgzg;
    private final /* synthetic */ zzdii zzhfo;
    final /* synthetic */ zzdif zzhfp;

    zzdig(zzdif zzdif, zzcze zzcze, zzdii zzdii) {
        this.zzhfp = zzdif;
        this.zzgzg = zzcze;
        this.zzhfo = zzdii;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(Object obj) {
        zzbnt zzbnt = (zzbnt) obj;
        synchronized (this.zzhfp) {
            this.zzhfp.zzhfn = null;
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczt)).booleanValue()) {
                zzbnt.zzakt().zza(this.zzhfp.zzhfl);
            }
            this.zzgzg.onSuccess(zzbnt);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        zzvg zzvg;
        zzbld zzbld = (zzbld) this.zzhfp.zzhfm.zzaun();
        if (zzbld == null) {
            zzvg = zzdok.zza(th, (zzcrq) null);
        } else {
            zzvg = zzbld.zzagj().zze(th);
        }
        synchronized (this.zzhfp) {
            this.zzhfp.zzhfn = null;
            if (zzbld != null) {
                zzbld.zzagk().zzc(zzvg);
                if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczt)).booleanValue()) {
                    this.zzhfp.zzfsj.execute(new zzdij(this, zzvg));
                }
            } else {
                this.zzhfp.zzhfl.zzc(zzvg);
                ((zzbld) this.zzhfp.zzb(this.zzhfo).zzagm()).zzagj().zzalc().zzalx();
            }
            zzdod.zza(zzvg.errorCode, th, "AppOpenAdLoader.onFailure");
            this.zzgzg.zzasi();
        }
    }
}
