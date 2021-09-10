package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.aj  reason: case insensitive filesystem */
public class C1052aj extends AbstractRunnableC0603Kb {
    public static byte[] A01;
    public final /* synthetic */ C1050ah A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 77);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-29, -10, -15, -14, -4, -83, 4, -18, 0, -83, -5, -14, 3, -14, -1, -83, -3, -1, -14, -3, -18, -1, -14, -15};
    }

    public C1052aj(C1050ah ahVar) {
        this.A00 = ahVar;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        if (!(this.A00.A0G)) {
            this.A00.A0f(A00(0, 24, 64));
        }
    }
}
