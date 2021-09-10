package com.google.android.gms.internal.ads;

public final class zzdbk implements zzdfi<zzdbl> {
    private final zzazn zzdtx;
    private final zzdnp zzfwy;
    private final zzdzv zzghl;

    public zzdbk(zzdzv zzdzv, zzdnp zzdnp, zzazn zzazn) {
        this.zzghl = zzdzv;
        this.zzfwy = zzdnp;
        this.zzdtx = zzazn;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdbl> zzasy() {
        return this.zzghl.zze(new zzdbn(this));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdbl zzatb() {
        return new zzdbl(this.zzfwy.zzhla, this.zzdtx);
    }
}
