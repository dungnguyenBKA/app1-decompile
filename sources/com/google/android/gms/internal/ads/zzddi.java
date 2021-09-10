package com.google.android.gms.internal.ads;

public final class zzddi implements zzeqb<zzddg> {
    private final zzeqo<zzdzv> zzewf;

    private zzddi(zzeqo<zzdzv> zzeqo) {
        this.zzewf = zzeqo;
    }

    public static zzddi zzap(zzeqo<zzdzv> zzeqo) {
        return new zzddi(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzddg(this.zzewf.get());
    }
}
