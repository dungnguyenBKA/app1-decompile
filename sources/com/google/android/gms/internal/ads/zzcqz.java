package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzcqz implements zzeqb<zzcqr> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdzv> zzgqr;

    public zzcqz(zzeqo<Context> zzeqo, zzeqo<zzdzv> zzeqo2) {
        this.zzewk = zzeqo;
        this.zzgqr = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcqr(this.zzewk.get(), this.zzgqr.get());
    }
}
