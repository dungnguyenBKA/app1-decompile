package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.6w  reason: invalid class name and case insensitive filesystem */
public class RunnableC02986w implements Runnable {
    public final /* synthetic */ C02996x A00;

    public RunnableC02986w(C02996x r1) {
        this.A00 = r1;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A00.A03();
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
