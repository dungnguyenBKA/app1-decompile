package com.google.android.gms.internal.ads;

public final class zzcdy implements zzeqb<zzcdp> {
    private final zzeqo<zzcgk> zzfjj;
    private final zzeqo<zzchq> zzggo;

    public zzcdy(zzeqo<zzchq> zzeqo, zzeqo<zzcgk> zzeqo2) {
        this.zzggo = zzeqo;
        this.zzfjj = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcdp(this.zzggo.get(), this.zzfjj.get());
    }
}
