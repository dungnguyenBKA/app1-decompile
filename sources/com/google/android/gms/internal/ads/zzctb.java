package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzctb implements zzdzl<zzblv> {
    private final /* synthetic */ zzcta zzgue;

    zzctb(zzcta zzcta) {
        this.zzgue = zzcta;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(zzblv zzblv) {
        zzblv.zzakb();
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        zzvg zze = this.zzgue.zzguc.zzagj().zze(th);
        this.zzgue.zzgas.zzc(zze);
        zzdod.zza(zze.errorCode, th, "DelayedBannerAd.onFailure");
    }
}
