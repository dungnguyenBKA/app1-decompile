package com.google.android.gms.internal.ads;

final class zzctt extends zzapc {
    private zzcrl<zzapk, zzctd> zzgtu;

    private zzctt(zzctr zzctr, zzcrl<zzapk, zzctd> zzcrl) {
        this.zzgtu = zzcrl;
    }

    @Override // com.google.android.gms.internal.ads.zzapd
    public final void zzdl(String str) {
        ((zzctd) this.zzgtu.zzgsu).zzc(0, str);
    }

    @Override // com.google.android.gms.internal.ads.zzapd
    public final void zzg(zzvg zzvg) {
        ((zzctd) this.zzgtu.zzgsu).zzd(zzvg);
    }

    @Override // com.google.android.gms.internal.ads.zzapd
    public final void zzvn() {
        ((zzctd) this.zzgtu.zzgsu).onAdLoaded();
    }
}
