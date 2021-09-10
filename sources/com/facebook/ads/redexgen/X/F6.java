package com.facebook.ads.redexgen.X;

public class F6 implements Runnable {
    public final /* synthetic */ C5 A00;

    public F6(C5 c5) {
        this.A00 = c5;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A00.A09();
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
