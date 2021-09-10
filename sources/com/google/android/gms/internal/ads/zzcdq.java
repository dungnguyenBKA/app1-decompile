package com.google.android.gms.internal.ads;

public final class zzcdq implements zzeqb<zzcdh> {
    private final zzeqo<zzccl> zzfig;
    private final zzeqo<zzcgk> zzfjj;
    private final zzeqo<zzchq> zzggo;
    private final zzeqo<zzbkm> zzggp;

    public zzcdq(zzeqo<zzchq> zzeqo, zzeqo<zzcgk> zzeqo2, zzeqo<zzbkm> zzeqo3, zzeqo<zzccl> zzeqo4) {
        this.zzggo = zzeqo;
        this.zzfjj = zzeqo2;
        this.zzggp = zzeqo3;
        this.zzfig = zzeqo4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcdh(this.zzggo.get(), this.zzfjj.get(), this.zzggp.get(), this.zzfig.get());
    }
}
