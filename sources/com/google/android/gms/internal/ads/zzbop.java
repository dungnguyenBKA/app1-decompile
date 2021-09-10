package com.google.android.gms.internal.ads;

public final class zzbop implements zzeqb<zzboq> {
    private final zzeqo<zzbsm> zzfgg;

    private zzbop(zzeqo<zzbsm> zzeqo) {
        this.zzfgg = zzeqo;
    }

    public static zzbop zze(zzeqo<zzbsm> zzeqo) {
        return new zzbop(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzboq(this.zzfgg.get());
    }
}
