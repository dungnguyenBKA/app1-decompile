package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.Format;

public class B2 implements Runnable {
    public final /* synthetic */ Format A00;
    public final /* synthetic */ B6 A01;

    public B2(B6 b6, Format format) {
        this.A01 = b6;
        this.A00 = format;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A01.A01.A9V(this.A00);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
