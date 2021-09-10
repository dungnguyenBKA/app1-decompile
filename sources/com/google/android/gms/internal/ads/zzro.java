package com.google.android.gms.internal.ads;

import android.view.View;

final class zzro implements Runnable {
    private final /* synthetic */ View zzbtg;
    private final /* synthetic */ zzrp zzbth;

    zzro(zzrp zzrp, View view) {
        this.zzbth = zzrp;
        this.zzbtg = view;
    }

    public final void run() {
        this.zzbth.zzj(this.zzbtg);
    }
}
