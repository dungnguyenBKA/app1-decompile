package com.facebook.ads.redexgen.X;

public class FG implements Runnable {
    public final /* synthetic */ FP A00;
    public final /* synthetic */ FS A01;

    public FG(FP fp, FS fs) {
        this.A00 = fp;
        this.A01 = fs;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A01.AAo(this.A00.A00, this.A00.A01);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
