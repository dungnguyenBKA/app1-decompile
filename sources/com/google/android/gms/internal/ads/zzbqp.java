package com.google.android.gms.internal.ads;

public final class zzbqp implements zzeqb<zzbts> {
    private final zzeqo<zzbts> zzfyg;

    private zzbqp(zzeqo<zzbts> zzeqo) {
        this.zzfyg = zzeqo;
    }

    public static zzbqp zzf(zzeqo<zzbts> zzeqo) {
        return new zzbqp(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbts) zzeqh.zza(this.zzfyg.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
