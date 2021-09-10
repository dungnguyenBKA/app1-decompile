package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzq;

public final class zzbqa implements zzeqb<zzbya<zzq>> {
    private final zzeqo<zzboq> zzftr;
    private final zzbps zzfxv;

    private zzbqa(zzbps zzbps, zzeqo<zzboq> zzeqo) {
        this.zzfxv = zzbps;
        this.zzftr = zzeqo;
    }

    public static zzbqa zza(zzbps zzbps, zzeqo<zzboq> zzeqo) {
        return new zzbqa(zzbps, zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzftr.get(), zzazp.zzeih), "Cannot return null from a non-@Nullable @Provides method");
    }
}
