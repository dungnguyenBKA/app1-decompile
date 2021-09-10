package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdcd implements zzeqb<zzdcb> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Context> zzewk;

    public zzdcd(zzeqo<zzdzv> zzeqo, zzeqo<Context> zzeqo2) {
        this.zzewf = zzeqo;
        this.zzewk = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdcb(this.zzewf.get(), this.zzewk.get());
    }
}
