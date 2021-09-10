package com.google.android.gms.internal.ads;

public final class zzbki implements zzeqb<zzamo> {
    private final zzeqo<zzamj> zzfte;

    private zzbki(zzeqo<zzamj> zzeqo) {
        this.zzfte = zzeqo;
    }

    public static zzbki zzb(zzeqo<zzamj> zzeqo) {
        return new zzbki(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzamo) zzeqh.zza(this.zzfte.get().zzur(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
