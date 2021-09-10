package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Iv  reason: case insensitive filesystem */
public class RunnableC0573Iv implements Runnable {
    public final /* synthetic */ int A00;
    public final /* synthetic */ long A01;
    public final /* synthetic */ C0577Iz A02;

    public RunnableC0573Iv(C0577Iz iz, int i, long j) {
        this.A02 = iz;
        this.A00 = i;
        this.A01 = j;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A02.A01.AA3(this.A00, this.A01);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
