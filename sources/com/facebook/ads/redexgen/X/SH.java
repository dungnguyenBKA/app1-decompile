package com.facebook.ads.redexgen.X;

import java.util.Arrays;

public class SH extends AbstractRunnableC0603Kb {
    public static byte[] A01;
    public final /* synthetic */ SJ A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 34);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-113, -98, -105};
    }

    public SH(SJ sj) {
        this.A00 = sj;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        try {
            this.A00.A09();
        } catch (Exception e) {
            this.A00.A0C.A04().A8V(A00(0, 3, 12), C03228e.A0I, new C03238f(e));
        }
    }
}
