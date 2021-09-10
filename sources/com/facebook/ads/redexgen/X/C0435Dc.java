package com.facebook.ads.redexgen.X;

import java.io.IOException;

/* renamed from: com.facebook.ads.redexgen.X.Dc  reason: case insensitive filesystem */
public final class C0435Dc {
    public final int A00;
    public final long A01;

    public C0435Dc(int i, long j) {
        this.A00 = i;
        this.A01 = j;
    }

    public static C0435Dc A00(CH ch, IM im) throws IOException, InterruptedException {
        ch.ACM(im.A00, 0, 8);
        im.A0Z(0);
        return new C0435Dc(im.A09(), im.A0L());
    }
}
