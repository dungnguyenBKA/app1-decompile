package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Bc  reason: case insensitive filesystem */
public class C0396Bc extends Thread {
    public final /* synthetic */ AbstractC0958Ya A00;

    public C0396Bc(AbstractC0958Ya ya) {
        this.A00 = ya;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A00.A0N();
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
