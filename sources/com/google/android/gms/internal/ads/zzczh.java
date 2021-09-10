package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzczh implements zzdzl<zzbnt> {
    private final /* synthetic */ zzcze zzgzg;
    private final /* synthetic */ zzcau zzgzh;
    final /* synthetic */ zzczg zzgzi;

    zzczh(zzczg zzczg, zzcze zzcze, zzcau zzcau) {
        this.zzgzi = zzczg;
        this.zzgzg = zzcze;
        this.zzgzh = zzcau;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(zzbnt zzbnt) {
        zzbnt zzbnt2 = zzbnt;
        synchronized (this.zzgzi) {
            zzbnt2.zzakt().zza(this.zzgzi.zzgze.zzasp());
            this.zzgzg.onSuccess(zzbnt2);
            this.zzgzi.zzguy.zzafa().execute(new zzczk(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        zzvg zze = this.zzgzh.zzagj().zze(th);
        this.zzgzh.zzagk().zzc(zze);
        this.zzgzi.zzguy.zzafa().execute(new zzczj(this, zze));
        zzdod.zza(zze.errorCode, th, "NativeAdLoader.onFailure");
        this.zzgzg.zzasi();
    }
}
