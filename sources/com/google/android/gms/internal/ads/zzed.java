package com.google.android.gms.internal.ads;

import android.view.MotionEvent;

final class zzed implements Runnable {
    private final /* synthetic */ MotionEvent zzxo;

    zzed(zzea zzea, MotionEvent motionEvent) {
        this.zzxo = motionEvent;
    }

    public final void run() {
        try {
            zzea.zzxa.zza(this.zzxo);
        } catch (Exception e) {
            zzea.zzxc.zza(2022, -1, e);
        }
    }
}
