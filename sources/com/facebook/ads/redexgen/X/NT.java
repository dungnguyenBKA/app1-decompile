package com.facebook.ads.redexgen.X;

public class NT implements Runnable {
    public final /* synthetic */ NU A00;
    public final /* synthetic */ NV A01;

    public NT(NU nu, NV nv) {
        this.A00 = nu;
        this.A01 = nv;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A01.A9R();
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
