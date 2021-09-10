package com.facebook.ads.redexgen.X;

public class B1 implements Runnable {
    public final /* synthetic */ long A00;
    public final /* synthetic */ long A01;
    public final /* synthetic */ B6 A02;
    public final /* synthetic */ String A03;

    public B1(B6 b6, String str, long j, long j2) {
        this.A02 = b6;
        this.A03 = str;
        this.A01 = j;
        this.A00 = j2;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A02.A01.A9S(this.A03, this.A01, this.A00);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
