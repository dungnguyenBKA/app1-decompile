package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdez implements zzeqb<zzdex> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzazn> zzfqo;

    private zzdez(zzeqo<zzdzv> zzeqo, zzeqo<Context> zzeqo2, zzeqo<zzazn> zzeqo3) {
        this.zzewf = zzeqo;
        this.zzewk = zzeqo2;
        this.zzfqo = zzeqo3;
    }

    public static zzdez zzad(zzeqo<zzdzv> zzeqo, zzeqo<Context> zzeqo2, zzeqo<zzazn> zzeqo3) {
        return new zzdez(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdex(this.zzewf.get(), this.zzewk.get(), this.zzfqo.get());
    }
}
