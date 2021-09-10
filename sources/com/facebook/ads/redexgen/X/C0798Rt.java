package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Rt  reason: case insensitive filesystem */
public class C0798Rt extends AbstractRunnableC0603Kb {
    public static byte[] A01;
    public final /* synthetic */ C0799Ru A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 95);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-20, -29, -8, -29, -11, -27, -12, -21, -14, -10, -68};
    }

    public C0798Rt(C0799Ru ru) {
        this.A00 = ru;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        this.A00.A02.A0A().AEc();
        NS ns = this.A00.A04;
        ns.loadUrl(A00(0, 11, 35) + this.A00.A00.A04());
    }
}
