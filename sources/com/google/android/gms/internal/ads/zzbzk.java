package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzq;

public final class zzbzk implements zzeqb<zzbya<zzq>> {
    private final zzeqo<zzcai> zzftr;
    private final zzbyz zzgbk;

    private zzbzk(zzbyz zzbyz, zzeqo<zzcai> zzeqo) {
        this.zzgbk = zzbyz;
        this.zzftr = zzeqo;
    }

    public static zzbzk zzd(zzbyz zzbyz, zzeqo<zzcai> zzeqo) {
        return new zzbzk(zzbyz, zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzftr.get(), zzazp.zzeig), "Cannot return null from a non-@Nullable @Provides method");
    }
}
