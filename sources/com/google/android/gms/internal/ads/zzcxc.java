package com.google.android.gms.internal.ads;

import java.util.Objects;

public final class zzcxc implements zzeqb<zzcxa> {
    private final zzcxa zzgxc;

    private zzcxc(zzcxa zzcxa) {
        this.zzgxc = zzcxa;
    }

    public static zzcxc zzd(zzcxa zzcxa) {
        return new zzcxc(zzcxa);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzcxa zzcxa = this.zzgxc;
        Objects.requireNonNull(zzcxa);
        return (zzcxa) zzeqh.zza(zzcxa, "Cannot return null from a non-@Nullable @Provides method");
    }
}
