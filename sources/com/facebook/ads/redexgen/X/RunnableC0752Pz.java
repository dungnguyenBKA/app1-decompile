package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Pz  reason: case insensitive filesystem */
public class RunnableC0752Pz implements Runnable {
    public final /* synthetic */ Q2 A00;

    public RunnableC0752Pz(Q2 q2) {
        this.A00 = q2;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A00.A08();
                this.A00.A05.removeCallbacks(this);
                this.A00.A05.postDelayed(this, 250);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
