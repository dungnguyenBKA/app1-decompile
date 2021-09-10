package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdev implements zzeqb<zzdet> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzaxc> zzfqr;

    private zzdev(zzeqo<zzaxc> zzeqo, zzeqo<zzdzv> zzeqo2, zzeqo<Context> zzeqo3) {
        this.zzfqr = zzeqo;
        this.zzewf = zzeqo2;
        this.zzewk = zzeqo3;
    }

    public static zzdev zzac(zzeqo<zzaxc> zzeqo, zzeqo<zzdzv> zzeqo2, zzeqo<Context> zzeqo3) {
        return new zzdev(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdet(this.zzfqr.get(), this.zzewf.get(), this.zzewk.get());
    }
}
