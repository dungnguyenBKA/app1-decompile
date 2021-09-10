package com.google.android.gms.internal.ads;

public final class zzdda implements zzeqb<zzdcy> {
    private final zzeqo<zzdzv> zzewf;

    private zzdda(zzeqo<zzdzv> zzeqo) {
        this.zzewf = zzeqo;
    }

    public static zzdda zzao(zzeqo<zzdzv> zzeqo) {
        return new zzdda(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdcy(this.zzewf.get());
    }
}
