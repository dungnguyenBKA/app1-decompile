package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.d;

public final class zzbxe implements zzeqb<zzcuw> {
    private final zzeqo<zzcuy> zzfai;
    private final zzeqo<zzcrq> zzfaj;
    private final zzeqo<d> zzfsz;
    private final zzbwg zzgav;

    private zzbxe(zzbwg zzbwg, zzeqo<d> zzeqo, zzeqo<zzcuy> zzeqo2, zzeqo<zzcrq> zzeqo3) {
        this.zzgav = zzbwg;
        this.zzfsz = zzeqo;
        this.zzfai = zzeqo2;
        this.zzfaj = zzeqo3;
    }

    public static zzbxe zza(zzbwg zzbwg, zzeqo<d> zzeqo, zzeqo<zzcuy> zzeqo2, zzeqo<zzcrq> zzeqo3) {
        return new zzbxe(zzbwg, zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzcuw) zzeqh.zza(this.zzgav.zza(this.zzfsz.get(), this.zzfai.get(), this.zzfaj.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
