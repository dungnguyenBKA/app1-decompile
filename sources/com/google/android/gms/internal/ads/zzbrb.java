package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzbrb implements zzeqb<Context> {
    private final zzeqo<Context> zzfxw;
    private final zzbqx zzfyz;

    private zzbrb(zzbqx zzbqx, zzeqo<Context> zzeqo) {
        this.zzfyz = zzbqx;
        this.zzfxw = zzeqo;
    }

    public static zzbrb zza(zzbqx zzbqx, zzeqo<Context> zzeqo) {
        return new zzbrb(zzbqx, zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Context) zzeqh.zza(this.zzfyz.zzce(this.zzfxw.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
