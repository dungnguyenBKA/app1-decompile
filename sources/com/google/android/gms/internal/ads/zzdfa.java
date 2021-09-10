package com.google.android.gms.internal.ads;

public final class zzdfa implements zzeqb<zzdey> {
    private final zzeqo<zzdkv> zzfyi;

    private zzdfa(zzeqo<zzdkv> zzeqo) {
        this.zzfyi = zzeqo;
    }

    public static zzdfa zzar(zzeqo<zzdkv> zzeqo) {
        return new zzdfa(zzeqo);
    }

    public static zzdey zzb(zzdkv zzdkv) {
        return new zzdey(zzdkv);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzb(this.zzfyi.get());
    }
}
