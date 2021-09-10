package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Bi  reason: case insensitive filesystem */
public class RunnableC0402Bi implements Runnable {
    public final /* synthetic */ C0407Bn A00;
    public final /* synthetic */ AbstractC0408Bo A01;

    public RunnableC0402Bi(C0407Bn bn, AbstractC0408Bo bo) {
        this.A00 = bn;
        this.A01 = bo;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A01.A9z();
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
