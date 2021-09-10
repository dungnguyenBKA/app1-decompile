package com.google.android.gms.internal.ads;

public final class zzcbr implements zzeqb<zzcbs> {
    private final zzeqo<zzccd> zzgcy;

    private zzcbr(zzeqo<zzccd> zzeqo) {
        this.zzgcy = zzeqo;
    }

    public static zzcbr zzy(zzeqo<zzccd> zzeqo) {
        return new zzcbr(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcbs(this.zzgcy.get());
    }
}
