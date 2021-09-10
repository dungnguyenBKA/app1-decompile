package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;

public final class zzbjh implements zzeqb<zzbji> {
    private final zzeqo<zzf> zzfag;

    private zzbjh(zzeqo<zzf> zzeqo) {
        this.zzfag = zzeqo;
    }

    public static zzbjh zza(zzeqo<zzf> zzeqo) {
        return new zzbjh(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbji(this.zzfag.get());
    }
}
