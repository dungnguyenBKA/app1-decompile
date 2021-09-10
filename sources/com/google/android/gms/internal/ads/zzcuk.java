package com.google.android.gms.internal.ads;

final class zzcuk extends zzaph {
    private zzcrl<zzapk, zzctd> zzgtu;
    private final /* synthetic */ zzcui zzgux;

    private zzcuk(zzcui zzcui, zzcrl<zzapk, zzctd> zzcrl) {
        this.zzgux = zzcui;
        this.zzgtu = zzcrl;
    }

    @Override // com.google.android.gms.internal.ads.zzape
    public final void zza(zzanx zzanx) {
        this.zzgux.zzguw = zzanx;
        ((zzctd) this.zzgtu.zzgsu).onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.zzape
    public final void zzdl(String str) {
        ((zzctd) this.zzgtu.zzgsu).zzc(0, str);
    }

    @Override // com.google.android.gms.internal.ads.zzape
    public final void zzg(zzvg zzvg) {
        ((zzctd) this.zzgtu.zzgsu).zzd(zzvg);
    }
}
