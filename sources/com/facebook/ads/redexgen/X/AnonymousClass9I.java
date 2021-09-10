package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.9I  reason: invalid class name */
public final class AnonymousClass9I {
    public static byte[] A00;
    public static final String A01 = AnonymousClass9I.class.getSimpleName();

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 51);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{-2, -15, -17, -5, -2, -16, -21, -16, -19, 0, -19, -18, -19, -1, -15};
    }

    static {
        A03();
    }

    public static AnonymousClass9K A00(XK xk) {
        try {
            return new Y0(xk);
        } catch (IOException e) {
            xk.A04().A8V(A02(0, 15, 89), C03228e.A20, new C03238f(e));
            return new C0955Xx();
        }
    }

    public static EQ A01(XK xk) {
        return new EQ(xk);
    }
}
