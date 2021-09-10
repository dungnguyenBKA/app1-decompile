package com.google.android.gms.internal.ads;

public final class zzdmv implements zzeqb<zzdmq> {
    private final zzeqo<zzdnk> zzfpa;
    private final zzeqo<zzdmc> zzgys;
    private final zzeqo<zzdlh> zzhfh;

    public zzdmv(zzeqo<zzdmc> zzeqo, zzeqo<zzdlh> zzeqo2, zzeqo<zzdnk> zzeqo3) {
        this.zzgys = zzeqo;
        this.zzhfh = zzeqo2;
        this.zzfpa = zzeqo3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdmq(this.zzgys.get(), this.zzhfh.get(), this.zzfpa.get());
    }
}
