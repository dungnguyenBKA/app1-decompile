package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzq;
import java.util.concurrent.atomic.AtomicBoolean;

public final class zzboq implements zzq {
    private final zzbsm zzfwu;
    private AtomicBoolean zzfwv = new AtomicBoolean(false);

    public zzboq(zzbsm zzbsm) {
        this.zzfwu = zzbsm;
    }

    public final boolean isClosed() {
        return this.zzfwv.get();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onUserLeaveHint() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zza(zzn zzn) {
        this.zzfwv.set(true);
        this.zzfwu.onAdClosed();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zzvo() {
        this.zzfwu.onAdOpened();
    }
}
