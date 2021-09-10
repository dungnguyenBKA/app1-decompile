package com.google.android.gms.internal.ads;

import java.util.Objects;

public final class zzcas implements zzeqb<zzcaq> {
    private final zzcaq zzgbx;

    private zzcas(zzcaq zzcaq) {
        this.zzgbx = zzcaq;
    }

    public static zzcas zze(zzcaq zzcaq) {
        return new zzcas(zzcaq);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzcaq zzcaq = this.zzgbx;
        Objects.requireNonNull(zzcaq);
        return (zzcaq) zzeqh.zza(zzcaq, "Cannot return null from a non-@Nullable @Provides method");
    }
}
