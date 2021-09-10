package com.google.android.gms.internal.ads;

import java.util.Map;

public final class zzboa<AdT> implements zzeqb<zzbnx<AdT>> {
    private final zzeqo<Map<String, zzcrj<AdT>>> zzfwl;

    private zzboa(zzeqo<Map<String, zzcrj<AdT>>> zzeqo) {
        this.zzfwl = zzeqo;
    }

    public static <AdT> zzboa<AdT> zzd(zzeqo<Map<String, zzcrj<AdT>>> zzeqo) {
        return new zzboa<>(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbnx(this.zzfwl.get());
    }
}
