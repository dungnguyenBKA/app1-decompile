package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdgs implements zzeqb<zzdgq> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<zztj> zzexx;

    public zzdgs(zzeqo<zztj> zzeqo, zzeqo<zzdzv> zzeqo2, zzeqo<Context> zzeqo3) {
        this.zzexx = zzeqo;
        this.zzewf = zzeqo2;
        this.zzewk = zzeqo3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdgq(this.zzexx.get(), this.zzewf.get(), this.zzewk.get());
    }
}
