package com.google.android.gms.internal.ads;

public final class zzdci implements zzdfi<zzdcj> {
    private final zzdnp zzfwy;
    private final zzdzv zzghl;
    private final String zzgzy;
    private final zzcip zzhbq;

    public zzdci(zzdzv zzdzv, zzcip zzcip, zzdnp zzdnp, String str) {
        this.zzghl = zzdzv;
        this.zzhbq = zzcip;
        this.zzfwy = zzdnp;
        this.zzgzy = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdcj> zzasy() {
        return this.zzghl.zze(new zzdcl(this));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdcj zzate() {
        return new zzdcj(this.zzhbq.zzq(this.zzfwy.zzhkx, this.zzgzy), this.zzhbq.zzapx());
    }
}
