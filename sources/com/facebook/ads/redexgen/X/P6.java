package com.facebook.ads.redexgen.X;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public final class P6 {
    public static byte[] A00;
    public static String[] A01;

    static {
        A03();
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            byte b = (byte) ((copyOfRange[i4] - i3) - 93);
            String[] strArr = A01;
            if (strArr[3].charAt(25) != strArr[4].charAt(25)) {
                A01[7] = "ZkkNqMbSq2X5uLLX3N";
                copyOfRange[i4] = b;
            } else {
                throw new RuntimeException();
            }
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{18, 10, 14, 10, 13, -38, 7, -3, 11, 8, 2, -3, 34, 49, 49, 32, 47, 34, 46, 38, 42, 43, 60, 47, 41, 43, 37, 51, 53, 42, 43, 50, 69, 72, 60, 58, 69, 62, 50, 54, 33, 37, 17, 40, 23, 36, -14, -29, -12, -10, -16, -25, -12, -31, -25, -16, -26, -14, -15, -21, -16, -10, 10, 6, -5, 19, -5, -4, 6, -1, -7, 8, -5, 7, -1, -22, -38, -23, -36, -36, -27, -42, -33, -36, -32, -34, -33, -21, -48, -64, -49, -62, -62, -53, -68, -44, -58, -63, -47, -59, 13, -2, 5, -7, 16, -1, 12, 13, 3, 9, 8, 1, -13, 1, 1, -9, -3, -4, -19, -9, -14};
    }

    public static void A03() {
        A01 = new String[]{"FlapraKYinr7Nj6zb2x", "Je7Oc75DeV26JYLGdoAYQBFZl5wXaWlc", "6eSxJX", "aEepWtzNMaW6JZj4waJ23HNf2aIS7LoC", "JwlyhY0m7wRpvvwBZvP15fqQyn91MpTE", "PlE1oLNOrYKtW3AWK6zlObYGaKJphnE8", "QTcNGp4T1DOVQL9", "izKSydL2onnSjNYNNJlTpUx2BXz"};
    }

    public static Map<String, String> A01(AnonymousClass8D r8, String str, String str2) {
        HashMap hashMap = new HashMap();
        C03328o r5 = new C03328o(r8);
        int i = r8.getResources().getDisplayMetrics().widthPixels;
        int i2 = r8.getResources().getDisplayMetrics().heightPixels;
        hashMap.put(A00(FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION, 10, 49), r8.A05().A02());
        hashMap.put(A00(62, 13, 61), str2);
        hashMap.put(A00(46, 16, 37), str);
        hashMap.put(A00(20, 12, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS), String.valueOf(r5.A09()));
        hashMap.put(A00(88, 12, 0), String.valueOf((int) (((float) i) / C0632Lh.A01)));
        hashMap.put(A00(75, 13, 26), String.valueOf((int) (((float) i2) / C0632Lh.A01)));
        hashMap.put(A00(38, 2, 102), A00(5, 7, 60));
        hashMap.put(A00(40, 6, 85), C03328o.A03);
        hashMap.put(A00(32, 6, 124), Locale.getDefault().toString());
        hashMap.put(A00(100, 11, 61), A00(0, 5, 127));
        hashMap.put(A00(12, 8, 100), r5.A05());
        return hashMap;
    }
}
