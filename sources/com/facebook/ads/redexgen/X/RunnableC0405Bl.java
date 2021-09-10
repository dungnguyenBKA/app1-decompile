package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Bl  reason: case insensitive filesystem */
public class RunnableC0405Bl implements Runnable {
    public final /* synthetic */ C0407Bn A00;
    public final /* synthetic */ AbstractC0408Bo A01;

    public RunnableC0405Bl(C0407Bn bn, AbstractC0408Bo bo) {
        this.A00 = bn;
        this.A01 = bo;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A01.AA0();
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
