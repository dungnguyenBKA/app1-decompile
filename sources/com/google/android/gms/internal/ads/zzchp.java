package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzm;

/* access modifiers changed from: package-private */
public final class zzchp implements zzm {
    private final /* synthetic */ zzchq zzgjv;

    zzchp(zzchq zzchq) {
        this.zzgjv = zzchq;
    }

    @Override // com.google.android.gms.ads.internal.zzm
    public final void zzkn() {
        this.zzgjv.zzgjw.onPause();
    }

    @Override // com.google.android.gms.ads.internal.zzm
    public final void zzko() {
        this.zzgjv.zzgjw.onResume();
    }
}
