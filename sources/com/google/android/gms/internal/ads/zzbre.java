package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqx;

public final class zzbre implements zzeqb<zzbqx.zza> {
    private final zzbqx zzfyz;

    private zzbre(zzbqx zzbqx) {
        this.zzfyz = zzbqx;
    }

    public static zzbre zzk(zzbqx zzbqx) {
        return new zzbre(zzbqx);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbqx.zza) zzeqh.zza(this.zzfyz.zzalk(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
