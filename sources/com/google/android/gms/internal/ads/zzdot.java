package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdot implements zzeqb<Context> {
    private final zzeqo<Context> zzfxw;
    private final zzdor zzhml;

    private zzdot(zzdor zzdor, zzeqo<Context> zzeqo) {
        this.zzhml = zzdor;
        this.zzfxw = zzeqo;
    }

    public static zzdot zza(zzdor zzdor, zzeqo<Context> zzeqo) {
        return new zzdot(zzdor, zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzhml, this.zzfxw.get());
    }

    public static Context zza(zzdor zzdor, Context context) {
        return (Context) zzeqh.zza(context, "Cannot return null from a non-@Nullable @Provides method");
    }
}
