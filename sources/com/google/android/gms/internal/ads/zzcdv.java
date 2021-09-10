package com.google.android.gms.internal.ads;

import java.util.Map;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcdv implements zzbfq {
    private final Map zzehx;
    private final zzcdp zzggq;

    zzcdv(zzcdp zzcdp, Map map) {
        this.zzggq = zzcdp;
        this.zzehx = map;
    }

    @Override // com.google.android.gms.internal.ads.zzbfq
    public final void zzal(boolean z) {
        this.zzggq.zzb(this.zzehx, z);
    }
}
