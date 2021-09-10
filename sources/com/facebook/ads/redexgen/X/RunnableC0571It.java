package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.It  reason: case insensitive filesystem */
public class RunnableC0571It implements Runnable {
    public final /* synthetic */ long A00;
    public final /* synthetic */ long A01;
    public final /* synthetic */ C0577Iz A02;
    public final /* synthetic */ String A03;

    public RunnableC0571It(C0577Iz iz, String str, long j, long j2) {
        this.A02 = iz;
        this.A03 = str;
        this.A01 = j;
        this.A00 = j2;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A02.A01.ABx(this.A03, this.A01, this.A00);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
