package com.facebook.ads.redexgen.X;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.Locale;

public enum R3 {
    A03(A01(35, 4, FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION)),
    A04(A01(39, 4, 113));
    
    public static byte[] A01;
    public String A00;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 86);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{-99, -84, -93, -93, -22, 15, 23, 2, 13, 10, 5, -63, 20, 6, 19, 23, 6, 19, -63, 19, 6, 20, 17, 16, 15, 20, 6, -37, -63, -58, 20, -34, -40, -40, -29, 36, 51, 42, 42, 50, 44, 44, 55};
    }

    /* access modifiers changed from: public */
    static {
        A02();
    }

    /* access modifiers changed from: public */
    R3(String str) {
        this.A00 = str;
    }

    public static R3 A00(String str) {
        R3[] values = values();
        for (R3 r3 : values) {
            if (r3.A00.equals(str)) {
                return r3;
            }
        }
        throw new IllegalArgumentException(String.format(Locale.US, A01(4, 27, 75), str));
    }
}
