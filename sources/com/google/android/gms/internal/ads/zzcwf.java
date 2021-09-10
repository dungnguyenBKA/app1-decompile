package com.google.android.gms.internal.ads;

public final class zzcwf extends zzcwl {
    private final zzbvm zzgwf;

    public zzcwf(zzbrl zzbrl, zzbsd zzbsd, zzbsm zzbsm, zzbsw zzbsw, zzbvt zzbvt, zzbtj zzbtj, zzbyp zzbyp, zzbvm zzbvm, zzbrt zzbrt) {
        super(zzbrl, zzbsd, zzbsm, zzbsw, zzbvt, zzbtj, zzbyp, zzbvm, zzbrt);
        this.zzgwf = zzbvm;
    }

    @Override // com.google.android.gms.internal.ads.zzcwl, com.google.android.gms.internal.ads.zzank
    public final void onAdImpression() {
        this.zzgwf.zzale();
    }
}
