package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdcw implements zzeqb<zzdcu> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Context> zzewk;

    private zzdcw(zzeqo<Context> zzeqo, zzeqo<zzdzv> zzeqo2) {
        this.zzewk = zzeqo;
        this.zzewf = zzeqo2;
    }

    public static zzdcw zzav(zzeqo<Context> zzeqo, zzeqo<zzdzv> zzeqo2) {
        return new zzdcw(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdcu(this.zzewk.get(), this.zzewf.get());
    }
}
