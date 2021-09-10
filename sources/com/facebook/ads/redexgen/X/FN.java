package com.facebook.ads.redexgen.X;

public class FN implements Runnable {
    public final /* synthetic */ FP A00;
    public final /* synthetic */ FR A01;
    public final /* synthetic */ FS A02;

    public FN(FP fp, FS fs, FR fr) {
        this.A00 = fp;
        this.A02 = fs;
        this.A01 = fr;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A02.A9y(this.A00.A00, this.A00.A01, this.A01);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
