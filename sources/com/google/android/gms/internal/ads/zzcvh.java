package com.google.android.gms.internal.ads;

final class zzcvh extends zzapi {
    private zzcrl<zzapk, zzctd> zzgtu;

    private zzcvh(zzcvf zzcvf, zzcrl<zzapk, zzctd> zzcrl) {
        this.zzgtu = zzcrl;
    }

    @Override // com.google.android.gms.internal.ads.zzapj
    public final void zzdl(String str) {
        ((zzctd) this.zzgtu.zzgsu).zzc(0, str);
    }

    @Override // com.google.android.gms.internal.ads.zzapj
    public final void zzg(zzvg zzvg) {
        ((zzctd) this.zzgtu.zzgsu).zzd(zzvg);
    }

    @Override // com.google.android.gms.internal.ads.zzapj
    public final void zzvn() {
        ((zzctd) this.zzgtu.zzgsu).onAdLoaded();
    }
}
