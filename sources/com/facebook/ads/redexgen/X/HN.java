package com.facebook.ads.redexgen.X;

public class HN implements Runnable {
    public final /* synthetic */ int A00;
    public final /* synthetic */ long A01;
    public final /* synthetic */ long A02;
    public final /* synthetic */ C1080bB A03;

    public HN(C1080bB bBVar, int i, long j, long j2) {
        this.A03 = bBVar;
        this.A00 = i;
        this.A02 = j;
        this.A01 = j2;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A03.A07.A9Z(this.A00, this.A02, this.A01);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
