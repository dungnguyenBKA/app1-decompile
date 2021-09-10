package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzq;
import java.util.Set;

public final class zzbtp implements zzeqb<zzbtj> {
    private final zzeqo<Set<zzbya<zzq>>> zzfvd;

    private zzbtp(zzeqo<Set<zzbya<zzq>>> zzeqo) {
        this.zzfvd = zzeqo;
    }

    public static zzbtp zzo(zzeqo<Set<zzbya<zzq>>> zzeqo) {
        return new zzbtp(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbtj(this.zzfvd.get());
    }
}
