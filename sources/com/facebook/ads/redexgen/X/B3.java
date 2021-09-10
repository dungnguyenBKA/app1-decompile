package com.facebook.ads.redexgen.X;

public class B3 implements Runnable {
    public final /* synthetic */ int A00;
    public final /* synthetic */ long A01;
    public final /* synthetic */ long A02;
    public final /* synthetic */ B6 A03;

    public B3(B6 b6, int i, long j, long j2) {
        this.A03 = b6;
        this.A00 = i;
        this.A01 = j;
        this.A02 = j2;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A03.A01.A9X(this.A00, this.A01, this.A02);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
