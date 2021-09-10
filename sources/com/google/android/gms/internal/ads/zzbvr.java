package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbvr implements zzeqb<zzbvm> {
    private final zzeqo<Set<zzbya<zzbvq>>> zzfvd;

    private zzbvr(zzeqo<Set<zzbya<zzbvq>>> zzeqo) {
        this.zzfvd = zzeqo;
    }

    public static zzbvr zzq(zzeqo<Set<zzbya<zzbvq>>> zzeqo) {
        return new zzbvr(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbvm(this.zzfvd.get());
    }
}
