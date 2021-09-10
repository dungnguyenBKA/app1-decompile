package com.google.android.gms.internal.ads;

public final class zzbmh implements zzeqb<zzblv> {
    private final zzeqo<zzblx> zzfnb;
    private final zzbmc zzfvc;

    public zzbmh(zzbmc zzbmc, zzeqo<zzblx> zzeqo) {
        this.zzfvc = zzbmc;
        this.zzfnb = zzeqo;
    }

    public static zzblv zza(zzbmc zzbmc, Object obj) {
        return (zzblv) zzeqh.zza((zzblx) obj, "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzfvc, this.zzfnb.get());
    }
}
