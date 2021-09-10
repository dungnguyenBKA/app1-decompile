package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Set;

public final class zzbtc implements zzeqb<zzbta> {
    private final zzeqo<Set<zzbya<AdMetadataListener>>> zzfvd;

    private zzbtc(zzeqo<Set<zzbya<AdMetadataListener>>> zzeqo) {
        this.zzfvd = zzeqo;
    }

    public static zzbtc zzm(zzeqo<Set<zzbya<AdMetadataListener>>> zzeqo) {
        return new zzbtc(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbta(this.zzfvd.get());
    }
}
