package com.facebook.ads.redexgen.X;

import java.util.Arrays;

public class V0 implements AbstractC02806e {
    public static byte[] A01;
    public final /* synthetic */ V4 A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 38);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-99, -97, -110, -96, -110, -101, -95};
    }

    public V0(V4 v4) {
        this.A00 = v4;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        return this.A00.A0C(A00(0, 7, 7), false);
    }
}
