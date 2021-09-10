package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Kq  reason: case insensitive filesystem */
public class RunnableC0617Kq implements Runnable {
    public static byte[] A01;
    public final /* synthetic */ XJ A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 118);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{97, 122, 125, 98, 97, 99, 104, 99, 116, 111, 101};
    }

    public RunnableC0617Kq(XJ xj) {
        this.A00 = xj;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                C03238f r4 = new C03238f(A00(0, 4, 88));
                r4.A03(1);
                r4.A04(1);
                r4.A08(false);
                this.A00.A04().A8W(A00(4, 7, 112), C03228e.A1H, r4);
            } catch (Throwable otsl) {
                KT.A00(otsl, this);
            }
        }
    }
}
