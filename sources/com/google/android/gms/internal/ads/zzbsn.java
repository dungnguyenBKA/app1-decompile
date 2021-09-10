package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbsn implements zzeqb<zzbsg> {
    private final zzeqo<Set<zzbya<zzbsh>>> zzfvd;

    private zzbsn(zzeqo<Set<zzbya<zzbsh>>> zzeqo) {
        this.zzfvd = zzeqo;
    }

    public static zzbsn zzj(zzeqo<Set<zzbya<zzbsh>>> zzeqo) {
        return new zzbsn(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbsg(this.zzfvd.get());
    }
}
