package com.google.android.gms.internal.ads;

public final class zzbgk implements zzeqb<zzbjd> {
    private final zzbgb zzewc;
    private final zzeqo<zzbgc> zzewg;

    public zzbgk(zzbgb zzbgb, zzeqo<zzbgc> zzeqo) {
        this.zzewc = zzbgb;
        this.zzewg = zzeqo;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbjd) zzeqh.zza(this.zzewg.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
