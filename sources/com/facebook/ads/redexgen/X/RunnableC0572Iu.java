package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.Format;

/* renamed from: com.facebook.ads.redexgen.X.Iu  reason: case insensitive filesystem */
public class RunnableC0572Iu implements Runnable {
    public final /* synthetic */ Format A00;
    public final /* synthetic */ C0577Iz A01;

    public RunnableC0572Iu(C0577Iz iz, Format format) {
        this.A01 = iz;
        this.A00 = format;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A01.A01.AC2(this.A00);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
