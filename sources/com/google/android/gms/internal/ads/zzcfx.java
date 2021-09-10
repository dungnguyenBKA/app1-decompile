package com.google.android.gms.internal.ads;

public final class zzcfx implements zzeqb<zzcfw> {
    private final zzeqo<zzccd> zzgcy;
    private final zzeqo<zzcbu> zzgir;

    private zzcfx(zzeqo<zzcbu> zzeqo, zzeqo<zzccd> zzeqo2) {
        this.zzgir = zzeqo;
        this.zzgcy = zzeqo2;
    }

    public static zzcfx zzv(zzeqo<zzcbu> zzeqo, zzeqo<zzccd> zzeqo2) {
        return new zzcfx(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcfw(this.zzgir.get(), this.zzgcy.get());
    }
}
