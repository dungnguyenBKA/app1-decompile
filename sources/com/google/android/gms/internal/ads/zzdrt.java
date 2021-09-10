package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdrt implements zzeqb<zzamj> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzazn> zzfze;
    private final zzdru zzhrh;

    public zzdrt(zzdru zzdru, zzeqo<Context> zzeqo, zzeqo<zzazn> zzeqo2) {
        this.zzhrh = zzdru;
        this.zzewk = zzeqo;
        this.zzfze = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzamj) zzeqh.zza(new zzama().zzb(this.zzewk.get(), this.zzfze.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
