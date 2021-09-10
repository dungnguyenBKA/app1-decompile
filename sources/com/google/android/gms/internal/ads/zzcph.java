package com.google.android.gms.internal.ads;

public final class zzcph implements zzbrr, zzbtb, zzbua {
    private final zzdrz zzdic;
    private final zzayy zzebw;
    private final zzdsa zzgqf;

    public zzcph(zzdsa zzdsa, zzdrz zzdrz, zzayy zzayy) {
        this.zzgqf = zzdsa;
        this.zzdic = zzdrz;
        this.zzebw = zzayy;
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void onAdLoaded() {
        this.zzdic.zzb(this.zzgqf.zzu("action", "loaded"));
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzb(zzdnl zzdnl) {
        this.zzgqf.zza(zzdnl, this.zzebw);
    }

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void zzc(zzvg zzvg) {
        this.zzgqf.zzu("action", "ftl").zzu("ftl", String.valueOf(zzvg.errorCode)).zzu("ed", zzvg.zzchh);
        this.zzdic.zzb(this.zzgqf);
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzd(zzatq zzatq) {
        this.zzgqf.zzq(zzatq.zzdxi);
    }
}
