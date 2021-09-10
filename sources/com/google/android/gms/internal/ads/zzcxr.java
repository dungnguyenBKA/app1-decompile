package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzcxr implements zzeqb<zzcxs> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzwx> zzgxp;
    private final zzeqo<zzblv> zzgxq;

    public zzcxr(zzeqo<Context> zzeqo, zzeqo<zzwx> zzeqo2, zzeqo<zzdnp> zzeqo3, zzeqo<zzblv> zzeqo4) {
        this.zzewk = zzeqo;
        this.zzgxp = zzeqo2;
        this.zzfvf = zzeqo3;
        this.zzgxq = zzeqo4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcxs(this.zzewk.get(), this.zzgxp.get(), this.zzfvf.get(), this.zzgxq.get());
    }
}
