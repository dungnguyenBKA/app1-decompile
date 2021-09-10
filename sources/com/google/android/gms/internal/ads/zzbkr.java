package com.google.android.gms.internal.ads;

import android.view.View;

public final class zzbkr implements zzeqb<View> {
    private final zzbks zzftm;

    public zzbkr(zzbks zzbks) {
        this.zzftm = zzbks;
    }

    public static View zza(zzbks zzbks) {
        return (View) zzeqh.zza(zzbks.zzajf(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzftm);
    }
}
