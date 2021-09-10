package com.facebook.ads.redexgen.X;

public class FI implements Runnable {
    public final /* synthetic */ FP A00;
    public final /* synthetic */ FQ A01;
    public final /* synthetic */ FR A02;
    public final /* synthetic */ FS A03;

    public FI(FP fp, FS fs, FQ fq, FR fr) {
        this.A00 = fp;
        this.A03 = fs;
        this.A01 = fq;
        this.A02 = fr;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A03.AAb(this.A00.A00, this.A00.A01, this.A01, this.A02);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
