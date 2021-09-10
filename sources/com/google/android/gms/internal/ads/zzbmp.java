package com.google.android.gms.internal.ads;

public final class zzbmp implements zzeqb<zzbya<zzbvn>> {
    private final zzbmc zzfvc;
    private final zzeqo<zzbts> zzfvg;

    public zzbmp(zzbmc zzbmc, zzeqo<zzbts> zzeqo) {
        this.zzfvc = zzbmc;
        this.zzfvg = zzeqo;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(new zzbme(this.zzfvg.get()), zzazp.zzeih), "Cannot return null from a non-@Nullable @Provides method");
    }
}
