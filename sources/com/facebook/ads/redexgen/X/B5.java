package com.facebook.ads.redexgen.X;

public class B5 implements Runnable {
    public final /* synthetic */ int A00;
    public final /* synthetic */ B6 A01;

    public B5(B6 b6, int i) {
        this.A01 = b6;
        this.A00 = i;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A01.A01.A9W(this.A00);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
