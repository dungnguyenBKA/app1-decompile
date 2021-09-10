package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzbgv implements zzeqb<zzaue> {
    private final zzeqo<Context> zzewk;

    public zzbgv(zzeqo<Context> zzeqo) {
        this.zzewk = zzeqo;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        Context context = this.zzewk.get();
        return (zzaue) zzeqh.zza(new zzauc(context, new zzauj(context).zzwk()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
