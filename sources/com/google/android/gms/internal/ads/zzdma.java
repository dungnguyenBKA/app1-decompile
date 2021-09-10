package com.google.android.gms.internal.ads;

public final class zzdma implements zzeqb<zzdlh> {
    private final zzeqo<zzdov> zzhfz;

    private zzdma(zzeqo<zzdov> zzeqo) {
        this.zzhfz = zzeqo;
    }

    public static zzdma zzas(zzeqo<zzdov> zzeqo) {
        return new zzdma(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdlh(this.zzhfz.get());
    }
}
