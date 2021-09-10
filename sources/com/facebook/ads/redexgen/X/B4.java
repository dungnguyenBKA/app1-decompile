package com.facebook.ads.redexgen.X;

public class B4 implements Runnable {
    public final /* synthetic */ B6 A00;
    public final /* synthetic */ C0394Ba A01;

    public B4(B6 b6, C0394Ba ba) {
        this.A00 = b6;
        this.A01 = ba;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A01.A00();
                this.A00.A01.A9T(this.A01);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
