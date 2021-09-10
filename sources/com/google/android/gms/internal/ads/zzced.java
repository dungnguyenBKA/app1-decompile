package com.google.android.gms.internal.ads;

public final class zzced implements zzeqb<zzccl> {
    private final zzeqo<zzcec> zzfif;
    private final zzcee zzghg;

    public zzced(zzcee zzcee, zzeqo<zzcec> zzeqo) {
        this.zzghg = zzcee;
        this.zzfif = zzeqo;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzccl) zzeqh.zza(this.zzfif.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
