package com.facebook.ads.redexgen.X;

import java.util.Arrays;

public class U3 extends AbstractRunnableC0603Kb {
    public static byte[] A03;
    public final /* synthetic */ C02725w A00;
    public final /* synthetic */ XK A01;
    public final /* synthetic */ String A02;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 80);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{53, 55, 60, 55, 32, 59, 49};
    }

    public U3(C02725w r1, String str, XK xk) {
        this.A00 = r1;
        this.A02 = str;
        this.A01 = xk;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        try {
            this.A00.A07(this.A02);
        } catch (Throwable th) {
            this.A01.A04().A8V(A00(0, 7, 2), C03228e.A11, new C03238f(th));
        }
    }
}
