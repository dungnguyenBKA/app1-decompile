package com.google.android.gms.internal.ads;

public final class zzcmi implements zzeqb<zzcme> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<zzdzv> zzgnu;
    private final zzeqo<zzcnj> zzgnv;
    private final zzeqo<zzcol> zzgnw;

    private zzcmi(zzeqo<zzdzv> zzeqo, zzeqo<zzdzv> zzeqo2, zzeqo<zzcnj> zzeqo3, zzeqo<zzcol> zzeqo4) {
        this.zzgnu = zzeqo;
        this.zzewf = zzeqo2;
        this.zzgnv = zzeqo3;
        this.zzgnw = zzeqo4;
    }

    public static zzcmi zzd(zzeqo<zzdzv> zzeqo, zzeqo<zzdzv> zzeqo2, zzeqo<zzcnj> zzeqo3, zzeqo<zzcol> zzeqo4) {
        return new zzcmi(zzeqo, zzeqo2, zzeqo3, zzeqo4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcme(this.zzgnu.get(), this.zzewf.get(), this.zzgnv.get(), zzeqc.zzav(this.zzgnw));
    }
}
