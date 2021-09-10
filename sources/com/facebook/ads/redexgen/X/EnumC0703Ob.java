package com.facebook.ads.redexgen.X;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import org.apache.http.HttpStatus;

/* renamed from: com.facebook.ads.redexgen.X.Ob  reason: case insensitive filesystem */
public enum EnumC0703Ob {
    A09(A01(257, 10, 2)),
    A0C(A01(287, 24, 1)),
    A03(A01(191, 13, FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD)),
    A06(A01(228, 18, 43)),
    A05(A01(209, 19, 6)),
    A0B(A01(277, 10, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS)),
    A0D(A01(311, 3, 81)),
    A04(A01(HttpStatus.SC_NO_CONTENT, 5, 80)),
    A08(A01(251, 6, 76)),
    A0F(A01(324, 10, 93)),
    A0I(A01(355, 15, 96)),
    A07(A01(246, 5, 40)),
    A0E(A01(314, 10, 13)),
    A0A(A01(267, 10, 19)),
    A0J(A01(370, 10, 12)),
    A0H(A01(345, 10, 39)),
    A0G(A01(334, 11, 83)),
    A0K(A01(0, 0, FacebookMediationAdapter.ERROR_NULL_CONTEXT));
    
    public static byte[] A01;
    public final String A00;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 92);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{-21, -12, -9, -5, -19, 7, -22, -6, -9, -1, -5, -19, -6, -44, -43, -46, -27, -41, -82, -77, -67, -85, -84, -74, -81, -55, -84, -85, -83, -75, -55, -84, -65, -66, -66, -71, -72, -25, -16, -29, -28, -18, -25, 1, -28, -29, -27, -19, 1, -28, -9, -10, -10, -15, -16, -40, -27, -27, -30, -27, -12, 3, -4, -4, -13, -6, 24, 17, 30, 20, 28, 21, 47, 19, 36, 17, -41, -40, -45, -44, -18, -27, -40, -45, -44, -34, -61, -57, -54, -52, -65, -51, -51, -61, -55, -56, 24, 13, 33, 26, 15, 20, 43, 13, 16, 43, 30, 17, 28, 27, 30, 32, 21, 26, 19, 24, 27, 19, 26, 34, 33, 18, 44, 35, 22, 17, 18, 28, -20, -29, -11, -3, -28, -13, -20, -20, -29, -22, -27, -42, -22, -24, -38, -12, -21, -34, -39, -38, -28, -31, -35, -46, -22, -16, -25, -38, -43, -42, -32, -21, -34, -16, -38, -21, -35, -8, -36, -24, -26, -23, -27, -34, -19, -34, -28, -36, -38, -31, -16, -25, -38, -43, -42, -32, -15, -22, -25, -22, -21, -13, -22, 45, 54, 57, 61, 47, 41, 44, 60, 57, 65, 61, 47, 60, 16, 17, 14, 33, 19, -58, -53, -43, -61, -60, -50, -57, -63, -60, -61, -59, -51, -63, -60, -41, -42, -42, -47, -48, -20, -11, -24, -23, -13, -20, -26, -23, -24, -22, -14, -26, -23, -4, -5, -5, -10, -11, -23, -10, -10, -13, -10, 14, 29, 22, 22, 13, 20, -58, -65, -52, -62, -54, -61, -67, -63, -46, -65, -41, -40, -45, -44, -50, -27, -40, -45, -44, -34, 46, 50, 53, 55, 42, 56, 56, 46, 52, 51, -55, -66, -46, -53, -64, -59, -68, -66, -63, -68, -49, -62, -51, -52, -49, -47, -58, -53, -60, -68, -61, -55, -52, -44, 25, 28, 20, -42, -34, -35, -50, -56, -33, -46, -51, -50, -40, 39, 30, 48, 24, 31, 46, 39, 39, 30, 37, 31, 16, 36, 34, 20, 14, 37, 24, 19, 20, 30, -13, -17, -28, -4, -30, -7, -20, -25, -24, -14, 46, 33, 51, 29, 46, 32, 27, 31, 43, 41, 44, 40, 33, 48, 33, -37, -45, -47, -40, -57, -34, -47, -52, -51, -41};
    }

    /* access modifiers changed from: public */
    static {
        A02();
    }

    /* access modifiers changed from: public */
    EnumC0703Ob(String str) {
        this.A00 = str;
    }

    public static EnumC0703Ob A00(String str) {
        EnumC0703Ob[] values = values();
        for (EnumC0703Ob ob : values) {
            if (ob.A00.equalsIgnoreCase(str)) {
                return ob;
            }
        }
        return A0K;
    }
}
