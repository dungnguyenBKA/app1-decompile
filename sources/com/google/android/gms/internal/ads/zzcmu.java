package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzcmu implements zzeqb<String> {
    private final zzeqo<Context> zzewk;

    private zzcmu(zzeqo<Context> zzeqo) {
        this.zzewk = zzeqo;
    }

    public static zzcmu zzad(zzeqo<Context> zzeqo) {
        return new zzcmu(zzeqo);
    }

    public static String zzch(Context context) {
        return (String) zzeqh.zza(context.getPackageName(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzch(this.zzewk.get());
    }
}
