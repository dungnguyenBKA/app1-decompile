package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

public final class S3 extends AnonymousClass16 {
    public static byte[] A00 = null;
    public static String[] A01 = null;
    public static final long serialVersionUID = 5751287062553772012L;

    static {
        A05();
        A04();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A01[0].length() != 16) {
                A01[0] = "basKOcZiobbMvO07tra14WeVIAzrAzDF";
                if (i4 >= length) {
                    return new String(copyOfRange);
                }
                copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 105);
                i4++;
            } else {
                throw new RuntimeException();
            }
        }
    }

    public static void A04() {
        A00 = new byte[]{5, -8, 11, 0, 13, -4};
    }

    public static void A05() {
        A01 = new String[]{"jMc", "F9KJU5nWCxEJfH1MtrJPQ98rlg2xhqhb", "7jNlYgKw34wypv3TsOCVRM97qni1IFkS", "W5gvHzH3tQhCbbf1Q7sr07NWbFeRHxz0", "QDsxhdyObZs2LD8uuSUlwesP8VUImdt4", "RqkZZA1TQwwc7Sj8gFRGBwQRvCLKOG1p", "3", "FXFS7BhAGvbRYPXLgdilxhgSLH2Ol13Z"};
    }

    public S3(List<AnonymousClass19> list) {
        super(list);
    }

    public static S3 A02(JSONObject jSONObject, XJ xj) {
        S3 s3 = new S3(AnonymousClass16.A01(jSONObject, xj, new S2()));
        s3.A0i(jSONObject);
        s3.A0g(A03(0, 6, 46));
        return s3;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass16
    public final int A0J() {
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass16
    public final int A0K() {
        return 0;
    }
}
