package com.google.android.gms.internal.ads;

public final class zzdas implements zzeqb<zzdat> {
    private final zzeqo<zzdnp> zzfvf;

    private zzdas(zzeqo<zzdnp> zzeqo) {
        this.zzfvf = zzeqo;
    }

    public static zzdas zzal(zzeqo<zzdnp> zzeqo) {
        return new zzdas(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdat(this.zzfvf.get());
    }
}
