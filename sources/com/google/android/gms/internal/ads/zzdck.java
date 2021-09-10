package com.google.android.gms.internal.ads;

public final class zzdck implements zzeqb<zzdci> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<String> zzftc;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzcip> zzhbs;

    private zzdck(zzeqo<zzdzv> zzeqo, zzeqo<zzcip> zzeqo2, zzeqo<zzdnp> zzeqo3, zzeqo<String> zzeqo4) {
        this.zzewf = zzeqo;
        this.zzhbs = zzeqo2;
        this.zzfvf = zzeqo3;
        this.zzftc = zzeqo4;
    }

    public static zzdck zzi(zzeqo<zzdzv> zzeqo, zzeqo<zzcip> zzeqo2, zzeqo<zzdnp> zzeqo3, zzeqo<String> zzeqo4) {
        return new zzdck(zzeqo, zzeqo2, zzeqo3, zzeqo4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdci(this.zzewf.get(), this.zzhbs.get(), this.zzfvf.get(), this.zzftc.get());
    }
}
