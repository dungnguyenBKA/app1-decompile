package com.google.android.gms.internal.ads;

import android.view.View;

public final class zzbmg implements zzeqb<View> {
    private final zzbmc zzfvc;

    public zzbmg(zzbmc zzbmc) {
        this.zzfvc = zzbmc;
    }

    public static View zzb(zzbmc zzbmc) {
        return (View) zzeqh.zza(zzbmc.zzajr(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzb(this.zzfvc);
    }
}
