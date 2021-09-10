package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbwd implements zzeqb<zzbvu> {
    private final zzeqo<Set<zzbya<zzbwc>>> zzfvd;

    private zzbwd(zzeqo<Set<zzbya<zzbwc>>> zzeqo) {
        this.zzfvd = zzeqo;
    }

    public static zzbwd zzs(zzeqo<Set<zzbya<zzbwc>>> zzeqo) {
        return new zzbwd(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbvu(this.zzfvd.get());
    }
}
