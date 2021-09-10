package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdfu implements zzeqb<zzdfs> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Context> zzewk;

    private zzdfu(zzeqo<zzdzv> zzeqo, zzeqo<Context> zzeqo2) {
        this.zzewf = zzeqo;
        this.zzewk = zzeqo2;
    }

    public static zzdfu zzbb(zzeqo<zzdzv> zzeqo, zzeqo<Context> zzeqo2) {
        return new zzdfu(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdfs(this.zzewf.get(), this.zzewk.get());
    }
}
