package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.b4  reason: case insensitive filesystem */
public class C1073b4 extends AbstractRunnableC0603Kb {
    public static byte[] A01;
    public final /* synthetic */ C1050ah A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 66);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{100, 91, 86, 87, 93, 18, 92, 87, 68, 87, 64, 18, 65, 70, 83, 64, 70, 87, 86, 18, 66, 94, 83, 75, 91, 92, 85};
    }

    public C1073b4(C1050ah ahVar) {
        this.A00 = ahVar;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        if (!(this.A00.A0K)) {
            this.A00.A0f(A00(0, 27, 112));
        }
    }
}
