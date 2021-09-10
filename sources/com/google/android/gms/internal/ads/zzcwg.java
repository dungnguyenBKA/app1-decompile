package com.google.android.gms.internal.ads;

public final class zzcwg extends zzcvj {
    private final zzbvm zzgwf;

    public zzcwg(zzbrl zzbrl, zzbsd zzbsd, zzbsm zzbsm, zzbsw zzbsw, zzbrt zzbrt, zzbvt zzbvt, zzbyp zzbyp, zzbtj zzbtj, zzbyk zzbyk, zzbvm zzbvm) {
        super(zzbrl, zzbsd, zzbsm, zzbsw, zzbrt, zzbvt, zzbyp, zzbtj, zzbyk, zzbvm);
        this.zzgwf = zzbvm;
    }

    @Override // com.google.android.gms.internal.ads.zzcwl, com.google.android.gms.internal.ads.zzank
    public final void onAdImpression() {
        this.zzgwf.zzale();
    }
}
