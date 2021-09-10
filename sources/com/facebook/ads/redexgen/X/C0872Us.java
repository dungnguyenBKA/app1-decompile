package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Us  reason: case insensitive filesystem */
public class C0872Us implements AbstractC02806e {
    public static byte[] A01;
    public final /* synthetic */ V4 A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 127);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{64, 49, 47, 52, 58, 59, 56, 59, 51, 69};
    }

    public C0872Us(V4 v4) {
        this.A00 = v4;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        return this.A00.A0A(A00(0, 10, 77));
    }
}
