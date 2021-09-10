package com.facebook.ads.redexgen.X;

public final class HX implements Runnable {
    public final HW A00;

    public HX(HW hw) {
        this.A00 = hw;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A00.AAh();
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
