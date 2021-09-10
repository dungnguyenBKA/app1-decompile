package com.google.android.gms.internal.ads;

public class zzcvj extends zzcwl {
    private zzbyk zzgvo;

    public zzcvj(zzbrl zzbrl, zzbsd zzbsd, zzbsm zzbsm, zzbsw zzbsw, zzbrt zzbrt, zzbvt zzbvt, zzbyp zzbyp, zzbtj zzbtj, zzbyk zzbyk, zzbvm zzbvm) {
        super(zzbrl, zzbsd, zzbsm, zzbsw, zzbvt, zzbtj, zzbyp, zzbvm, zzbrt);
        this.zzgvo = zzbyk;
    }

    @Override // com.google.android.gms.internal.ads.zzcwl, com.google.android.gms.internal.ads.zzank
    public final void onVideoEnd() {
        this.zzgvo.zzud();
    }

    @Override // com.google.android.gms.internal.ads.zzcwl, com.google.android.gms.internal.ads.zzank
    public final void zza(zzavl zzavl) {
        super.zza(zzavl);
        this.zzgvo.zza(new zzavj(zzavl.getType(), zzavl.getAmount()));
    }

    @Override // com.google.android.gms.internal.ads.zzcwl, com.google.android.gms.internal.ads.zzank
    public final void zzb(zzavj zzavj) {
        super.zzb(zzavj);
        this.zzgvo.zza(zzavj);
    }

    @Override // com.google.android.gms.internal.ads.zzcwl, com.google.android.gms.internal.ads.zzank
    public final void zzve() {
        this.zzgvo.zzuc();
    }

    @Override // com.google.android.gms.internal.ads.zzcwl, com.google.android.gms.internal.ads.zzank
    public final void zzvf() {
        this.zzgvo.zzud();
    }
}
