package com.google.android.gms.internal.ads;

public final class zzcjn implements zzeqb<zzcjk> {
    private final zzeqo<zzdkv> zzfan;
    private final zzeqo<zztu> zzgjp;

    private zzcjn(zzeqo<zztu> zzeqo, zzeqo<zzdkv> zzeqo2) {
        this.zzgjp = zzeqo;
        this.zzfan = zzeqo2;
    }

    public static zzcjn zzad(zzeqo<zztu> zzeqo, zzeqo<zzdkv> zzeqo2) {
        return new zzcjn(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcjk(this.zzgjp.get(), this.zzfan.get());
    }
}
