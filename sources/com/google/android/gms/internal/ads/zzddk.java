package com.google.android.gms.internal.ads;

public final class zzddk implements zzdfi<zzddl> {
    private final zzdmu zzfrb;
    private final zzdzv zzghl;

    public zzddk(zzdzv zzdzv, zzdmu zzdmu) {
        this.zzghl = zzdzv;
        this.zzfrb = zzdmu;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzddl> zzasy() {
        return this.zzghl.zze(new zzddn(this));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzddl zzath() {
        return new zzddl(this.zzfrb);
    }
}
