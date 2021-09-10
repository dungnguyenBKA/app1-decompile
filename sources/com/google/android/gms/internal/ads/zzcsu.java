package com.google.android.gms.internal.ads;

import android.view.View;

final class zzcsu extends zzapb {
    private zzcrl<zzapk, zzctd> zzgtu;
    private final /* synthetic */ zzcsp zzgtv;

    private zzcsu(zzcsp zzcsp, zzcrl<zzapk, zzctd> zzcrl) {
        this.zzgtv = zzcsp;
        this.zzgtu = zzcrl;
    }

    @Override // com.google.android.gms.internal.ads.zzaoy
    public final void zzdl(String str) {
        ((zzctd) this.zzgtu.zzgsu).zzc(0, str);
    }

    @Override // com.google.android.gms.internal.ads.zzaoy
    public final void zzg(zzvg zzvg) {
        ((zzctd) this.zzgtu.zzgsu).zzd(zzvg);
    }

    @Override // com.google.android.gms.internal.ads.zzaoy
    public final void zzx(zv zvVar) {
        this.zzgtv.view = (View) aw.P(zvVar);
        ((zzctd) this.zzgtu.zzgsu).onAdLoaded();
    }
}
