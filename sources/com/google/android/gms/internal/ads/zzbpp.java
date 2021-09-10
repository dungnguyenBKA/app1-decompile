package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;

public final class zzbpp implements zzeqb<zza> {
    private final zzeqo<Context> zzewk;
    private final zzbpq zzfxr;
    private final zzeqo<zzawz> zzfxs;

    private zzbpp(zzbpq zzbpq, zzeqo<Context> zzeqo, zzeqo<zzawz> zzeqo2) {
        this.zzfxr = zzbpq;
        this.zzewk = zzeqo;
        this.zzfxs = zzeqo2;
    }

    public static zzbpp zza(zzbpq zzbpq, zzeqo<Context> zzeqo, zzeqo<zzawz> zzeqo2) {
        return new zzbpp(zzbpq, zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zza) zzeqh.zza(new zza(this.zzewk.get(), this.zzfxs.get(), null), "Cannot return null from a non-@Nullable @Provides method");
    }
}
