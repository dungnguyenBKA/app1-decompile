package com.google.android.gms.internal.ads;

public final class zzbqk implements zzeqb<zzbya<zzbua>> {
    private final zzeqo<zzbqf> zzewe;
    private final zzbqh zzfxy;

    private zzbqk(zzbqh zzbqh, zzeqo<zzbqf> zzeqo) {
        this.zzfxy = zzbqh;
        this.zzewe = zzeqo;
    }

    public static zzbqk zza(zzbqh zzbqh, zzeqo<zzbqf> zzeqo) {
        return new zzbqk(zzbqh, zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), zzazp.zzeih), "Cannot return null from a non-@Nullable @Provides method");
    }
}
