package com.facebook.ads.redexgen.X;

import com.facebook.ads.VideoAutoplayBehavior;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Jd  reason: case insensitive filesystem */
public enum EnumC0581Jd {
    A03,
    A05,
    A04;
    
    public static byte[] A00;
    public static String[] A01;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 116);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{-57, -56, -55, -60, -40, -49, -41, -11, -20, -20, 22, 21};
    }

    public static void A03() {
        A01 = new String[]{"Gjwy6cOcQ9K2s9TECvKSb1UBI6p92tWs", "MkJKTqDYMAzsSL3ogCclj8aQMOEn3Zaf", "eTpSOjZOB", "ux", "6lFNHDDwy35cZQ5ctUwn46ZPa5FkYtAF", "2ZxEJa2ax0wS4G", "Utm", "f4eG1TG9uZ10lRPR3hza"};
    }

    /* access modifiers changed from: public */
    static {
        A03();
        A02();
    }

    public static VideoAutoplayBehavior A00(EnumC0581Jd jd) {
        if (jd == null) {
            return VideoAutoplayBehavior.DEFAULT;
        }
        int i = C0580Jc.A00[jd.ordinal()];
        if (i == 1) {
            return VideoAutoplayBehavior.DEFAULT;
        }
        if (A01[1].charAt(9) != 'M') {
            A01[5] = "KWBYg9gUO";
            if (i == 2) {
                return VideoAutoplayBehavior.ON;
            }
            if (i == 3) {
                return VideoAutoplayBehavior.OFF;
            }
            VideoAutoplayBehavior videoAutoplayBehavior = VideoAutoplayBehavior.DEFAULT;
            String[] strArr = A01;
            if (strArr[0].charAt(5) != strArr[4].charAt(5)) {
                String[] strArr2 = A01;
                strArr2[0] = "jNXTJSXFaHaCK7i5lqJo4GmnkgAhCocQ";
                strArr2[4] = "apiAoBnIaWOp8nG5E1dZaMbzfZqR1u59";
                return videoAutoplayBehavior;
            }
            A01[2] = "D4DDJWMfk";
            return videoAutoplayBehavior;
        }
        throw new RuntimeException();
    }
}
