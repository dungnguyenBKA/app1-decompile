package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Ci  reason: case insensitive filesystem */
public final class C0421Ci {
    public static byte[] A09;
    public static String[] A0A;
    public int A00;
    public int A01;
    public long A02;
    public int A03;
    public int A04;
    public final int A05;
    public final IM A06;
    public final IM A07;
    public final boolean A08;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 81);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A09 = new byte[]{27, 20, 15, 14, 9, 34, 30, 21, 8, 19, 22, 93, 16, 8, 14, 9, 93, 31, 24, 93, 76};
    }

    public static void A02() {
        A0A = new String[]{"fT4", "9XJ", "BdT8ugCih1Mpz00LrHVoF8KqNvgOr8AQ", "ItU4Mc5lT2NsoQYD", "XQJ1SNvFfokPp3KD", "IGCc23FH28N7ANBVj9k1dGnz4ha0U", "1lzK38hIt0", "A8GyDlY1o0KAgmQELzlat0ZxMGcgz"};
    }

    public C0421Ci(IM im, IM im2, boolean z) {
        this.A07 = im;
        this.A06 = im2;
        this.A08 = z;
        im2.A0Z(12);
        this.A05 = im2.A0I();
        im.A0Z(12);
        this.A04 = im.A0I();
        C0551Hx.A06(im.A09() != 1 ? false : true, A00(0, 21, 44));
        this.A00 = -1;
    }

    public final boolean A03() {
        long A0N;
        int i;
        int i2 = this.A00 + 1;
        this.A00 = i2;
        if (i2 != this.A05) {
            if (this.A08) {
                A0N = this.A06.A0O();
            } else {
                A0N = this.A06.A0N();
            }
            this.A02 = A0N;
            if (this.A00 == this.A03) {
                this.A01 = this.A07.A0I();
                this.A07.A0a(4);
                int i3 = this.A04 - 1;
                this.A04 = i3;
                if (i3 > 0) {
                    IM im = this.A07;
                    String[] strArr = A0A;
                    if (strArr[0].length() != strArr[1].length()) {
                        i = im.A0I() - 1;
                    } else {
                        A0A[2] = "DxoiDv7jb7q87sjQbqIMGefCzqS86q5Y";
                        i = im.A0I() - 1;
                    }
                } else {
                    i = -1;
                }
                this.A03 = i;
            }
            return true;
        } else if (A0A[6].length() != 19) {
            A0A[2] = "dfpT2dt5bGn60gbEA6wBElGJneIfVZr3";
            return false;
        } else {
            throw new RuntimeException();
        }
    }
}
