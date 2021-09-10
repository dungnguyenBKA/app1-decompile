package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Is  reason: case insensitive filesystem */
public class RunnableC0570Is implements Runnable {
    public final /* synthetic */ C0394Ba A00;
    public final /* synthetic */ C0577Iz A01;

    public RunnableC0570Is(C0577Iz iz, C0394Ba ba) {
        this.A01 = iz;
        this.A00 = ba;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A01.A01.ABz(this.A00);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
