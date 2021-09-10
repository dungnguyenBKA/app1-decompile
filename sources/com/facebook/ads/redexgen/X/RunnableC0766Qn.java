package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Qn  reason: case insensitive filesystem */
public class RunnableC0766Qn implements Runnable {
    public final /* synthetic */ C0767Qo A00;

    public RunnableC0766Qn(C0767Qo qo) {
        this.A00 = qo;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A00.A00();
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
