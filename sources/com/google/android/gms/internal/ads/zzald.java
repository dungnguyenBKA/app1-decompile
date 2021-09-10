package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzj;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzald implements zzakp {
    private final zzakz zzdjk;
    private final zzalq zzdjs;
    private final zzakm zzdjt;

    zzald(zzakz zzakz, zzalq zzalq, zzakm zzakm) {
        this.zzdjk = zzakz;
        this.zzdjs = zzalq;
        this.zzdjt = zzakm;
    }

    @Override // com.google.android.gms.internal.ads.zzakp
    public final void zzuk() {
        zzj.zzeen.postDelayed(new zzalc(this.zzdjk, this.zzdjs, this.zzdjt), (long) zzalk.zzdkc);
    }
}
