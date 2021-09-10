package com.facebook.ads.redexgen.X;

import java.util.Arrays;

public class AX extends L4 {
    public static byte[] A01;
    public final /* synthetic */ C1050ah A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 4);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-108, -89, -94, -93, -83, -114, -86, -97, -73, Byte.MIN_VALUE, -97, -95, -87, -125, -80, -80, -83, -80};
    }

    public AX(C1050ah ahVar) {
        this.A00 = ahVar;
    }

    /* access modifiers changed from: private */
    /* renamed from: A02 */
    public final void A04(C0626Lb lb) {
        this.A00.A0f(A00(0, 18, 58));
    }
}
