package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.IOException;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Dd  reason: case insensitive filesystem */
public final class C0436Dd {
    public static byte[] A00;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 48);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{10, 76, 69, 88, 10, 94, 83, 90, 79, 10, 66, 89, 30, 22, 13, 67, 89, 84, Byte.MAX_VALUE, 98, 121, 124, 55, 126, 100, 55, 99, 120, 120, 55, 123, 118, 101, 112, 114, 55, 63, 105, 37, 80, 85, 60, 62, 55, 99, 120, 55, 100, 124, 126, 103, 44, 55, 126, 115, 45, 55, 84, 105, 97, 116, 114, 101, 116, 117, 49, 115, 125, 126, 114, 122, 49, 112, 125, 120, 118, Byte.MAX_VALUE, 124, 116, Byte.MAX_VALUE, 101, 43, 49, 92, 114, 123, 122, 103, 124, 123, 114, 53, 96, 123, 126, 123, 122, 98, 123, 53, 66, 84, 67, 53, 118, 125, 96, 123, 126, 47, 53, 108, 119, 120, 120, 119, 76, 81, 87, 82, 82, 77, 80, 86, 71, 70, 2, 112, 107, 100, 100, 2, 68, 77, 80, 79, 67, 86, 24, 2, 109, 86, 75, 77, 72, 72, 87, 74, 76, 93, 92, 24, 111, 121, 110, 24, 90, 81, 76, 24, 92, 93, 72, 76, 80, 24, 106, 81, 76, 74, 79, 79, 80, 77, 75, 90, 91, 31, 104, 126, 105, 31, 89, 80, 77, 82, 94, 75, 31, 75, 70, 79, 90, 5, 31, 5, 19, 4, 23, 24, 46, 57, 7, 42, 46, 43, 42, 61, 29, 42, 46, 43, 42, 61, 102, 99, 118, 99, 19, 24, 1, 85};
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x00ee  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x011c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.facebook.ads.redexgen.X.C1002Zs A00(com.facebook.ads.redexgen.X.CH r19) throws java.io.IOException, java.lang.InterruptedException {
        /*
        // Method dump skipped, instructions count: 349
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0436Dd.A00(com.facebook.ads.redexgen.X.CH):com.facebook.ads.redexgen.X.Zs");
    }

    public static void A03(CH ch, C1002Zs zs) throws IOException, InterruptedException {
        C0551Hx.A01(ch);
        C0551Hx.A01(zs);
        ch.ADN();
        IM im = new IM(8);
        C0435Dc A002 = C0435Dc.A00(ch, im);
        while (A002.A00 != C0556Ic.A08(A01(214, 4, 50))) {
            Log.w(A01(199, 15, 127), A01(83, 28, 37) + A002.A00);
            long bytesToSkip = A002.A01 + 8;
            if (A002.A00 == C0556Ic.A08(A01(FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION, 4, 14))) {
                bytesToSkip = 12;
            }
            if (bytesToSkip <= 2147483647L) {
                ch.AE3((int) bytesToSkip);
                A002 = C0435Dc.A00(ch, im);
            } else {
                throw new AJ(A01(17, 40, 39) + A002.A00);
            }
        }
        ch.AE3(8);
        zs.A06(ch.A71(), A002.A01);
    }
}
