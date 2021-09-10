package com.facebook.ads.redexgen.X;

import java.util.Arrays;

public class OK implements Runnable {
    public static byte[] A01;
    public final /* synthetic */ C03378t A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 44);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-44, -25, -30, -29, -19, -50, -22, -33, -9, -32, -33, -31, -23, -61, -16, -16, -19, -16};
    }

    public OK(C03378t r1) {
        this.A00 = r1;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                OM.A0G(this.A00.A00, A00(0, 18, 82));
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
