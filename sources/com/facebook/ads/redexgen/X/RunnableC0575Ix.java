package com.facebook.ads.redexgen.X;

import android.view.Surface;

/* renamed from: com.facebook.ads.redexgen.X.Ix  reason: case insensitive filesystem */
public class RunnableC0575Ix implements Runnable {
    public final /* synthetic */ Surface A00;
    public final /* synthetic */ C0577Iz A01;

    public RunnableC0575Ix(C0577Iz iz, Surface surface) {
        this.A01 = iz;
        this.A00 = surface;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A01.A01.ABQ(this.A00);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
