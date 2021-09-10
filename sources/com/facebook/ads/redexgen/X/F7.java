package com.facebook.ads.redexgen.X;

public class F7 implements Runnable {
    public final /* synthetic */ C5 A00;

    public F7(C5 c5) {
        this.A00 = c5;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                if (!this.A00.A0G) {
                    this.A00.A08.A9p(this.A00);
                }
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
