package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.d;

public final class zzdcp implements zzeqb<zzdmu> {
    private final zzeqo<d> zzfsz;

    public zzdcp(zzeqo<d> zzeqo) {
        this.zzfsz = zzeqo;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzdmu) zzeqh.zza(new zzdmu(this.zzfsz.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
