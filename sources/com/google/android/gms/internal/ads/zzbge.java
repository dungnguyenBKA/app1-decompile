package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzbge implements zzeqb<Context> {
    private final zzbgb zzewc;

    public zzbge(zzbgb zzbgb) {
        this.zzewc = zzbgb;
    }

    public static Context zza(zzbgb zzbgb) {
        return (Context) zzeqh.zza(zzbgb.zzaeu(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzewc);
    }
}
