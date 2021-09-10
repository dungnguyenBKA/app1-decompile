package com.google.android.gms.internal.ads;

public final class zzbzv implements zzeqb<zzbzw> {
    private final zzeqo<zzbtj> zzfhj;
    private final zzeqo<zzbxw> zzflh;

    private zzbzv(zzeqo<zzbtj> zzeqo, zzeqo<zzbxw> zzeqo2) {
        this.zzfhj = zzeqo;
        this.zzflh = zzeqo2;
    }

    public static zzbzv zzt(zzeqo<zzbtj> zzeqo, zzeqo<zzbxw> zzeqo2) {
        return new zzbzv(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbzw(this.zzfhj.get(), this.zzflh.get());
    }
}
