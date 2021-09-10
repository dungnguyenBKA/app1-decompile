package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Bj  reason: case insensitive filesystem */
public class RunnableC0403Bj implements Runnable {
    public final /* synthetic */ C0407Bn A00;
    public final /* synthetic */ AbstractC0408Bo A01;
    public final /* synthetic */ Exception A02;

    public RunnableC0403Bj(C0407Bn bn, AbstractC0408Bo bo, Exception exc) {
        this.A00 = bn;
        this.A01 = bo;
        this.A02 = exc;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A01.AA2(this.A02);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
