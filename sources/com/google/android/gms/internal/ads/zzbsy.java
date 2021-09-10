package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbsy implements zzeqb<zzbsw> {
    private final zzeqo<Set<zzbya<zzbtb>>> zzfvd;

    private zzbsy(zzeqo<Set<zzbya<zzbtb>>> zzeqo) {
        this.zzfvd = zzeqo;
    }

    public static zzbsy zzl(zzeqo<Set<zzbya<zzbtb>>> zzeqo) {
        return new zzbsy(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbsw(this.zzfvd.get());
    }
}
