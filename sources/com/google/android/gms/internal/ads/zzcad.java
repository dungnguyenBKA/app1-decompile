package com.google.android.gms.internal.ads;

public final class zzcad implements zzeqb<zzcrj<zzbyy>> {
    private final zzeqo<zzdzv> zzfux;
    private final zzeqo<zzdrj> zzfvi;
    private final zzeqo<zzctr> zzfvj;
    private final zzeqo<zzcwe> zzfvk;

    public zzcad(zzeqo<zzdrj> zzeqo, zzeqo<zzdzv> zzeqo2, zzeqo<zzctr> zzeqo3, zzeqo<zzcwe> zzeqo4) {
        this.zzfvi = zzeqo;
        this.zzfux = zzeqo2;
        this.zzfvj = zzeqo3;
        this.zzfvk = zzeqo4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzcrj) zzeqh.zza(new zzcwi(this.zzfvi.get(), this.zzfux.get(), this.zzfvk.get(), this.zzfvj.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
