package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdfg implements zzeqb<zzdfd> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Context> zzfxw;

    private zzdfg(zzeqo<zzdzv> zzeqo, zzeqo<Context> zzeqo2) {
        this.zzewf = zzeqo;
        this.zzfxw = zzeqo2;
    }

    public static zzdfd zza(zzdzv zzdzv, Context context) {
        return new zzdfd(zzdzv, context);
    }

    public static zzdfg zzaz(zzeqo<zzdzv> zzeqo, zzeqo<Context> zzeqo2) {
        return new zzdfg(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzewf.get(), this.zzfxw.get());
    }
}
