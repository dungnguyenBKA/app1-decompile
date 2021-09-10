package com.google.android.gms.internal.ads;

public final class zzckd implements zzbrr, zzbtb, zzbua {
    private final zzckl zzgln;
    private final zzckw zzglo;

    public zzckd(zzckl zzckl, zzckw zzckw) {
        this.zzgln = zzckl;
        this.zzglo = zzckw;
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void onAdLoaded() {
        this.zzgln.zzso().put("action", "loaded");
        this.zzglo.zzo(this.zzgln.zzso());
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzb(zzdnl zzdnl) {
        this.zzgln.zzc(zzdnl);
    }

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void zzc(zzvg zzvg) {
        this.zzgln.zzso().put("action", "ftl");
        this.zzgln.zzso().put("ftl", String.valueOf(zzvg.errorCode));
        this.zzgln.zzso().put("ed", zzvg.zzchh);
        this.zzglo.zzo(this.zzgln.zzso());
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzd(zzatq zzatq) {
        this.zzgln.zzi(zzatq.zzdxi);
    }
}
