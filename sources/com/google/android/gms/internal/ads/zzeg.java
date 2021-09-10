package com.google.android.gms.internal.ads;

import android.view.MotionEvent;

final class zzeg implements Runnable {
    private final /* synthetic */ int zzxq;
    private final /* synthetic */ int zzxr;
    private final /* synthetic */ int zzxs;

    zzeg(zzea zzea, int i, int i2, int i3) {
        this.zzxq = i;
        this.zzxr = i2;
        this.zzxs = i3;
    }

    public final void run() {
        try {
            zzea.zzxa.zza(MotionEvent.obtain(0, (long) this.zzxq, 0, (float) this.zzxr, (float) this.zzxs, 0));
        } catch (Exception e) {
            zzea.zzxc.zza(2022, -1, e);
        }
    }
}
