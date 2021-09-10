package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.util.Arrays;

public final class ZT implements CG {
    public static byte[] A04;
    public static String[] A05;
    public static final CJ A06 = new ZS();
    public static final int A07 = C0556Ic.A08(A00(0, 3, 127));
    public boolean A00;
    public final long A01;
    public final ZU A02;
    public final IM A03;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 57);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{15, 2, 117};
    }

    public static void A02() {
        A05 = new String[]{"P5w0t5YmbfCx1ojda5KKDsEMO6jqUmnr", "UdOatSKcJailVD", "", "xAiF", "epl8GGi5jyNsT2QZHjLNLopZqyhNzplR", "TY8pRi4pa4JcG30Kuv61m", "fOMFGQDuqjq2usuY2YJ2oGF", "ObZwfJQfEiVxl"};
    }

    static {
        A02();
        A01();
    }

    public ZT() {
        this(0);
    }

    public ZT(long j) {
        this.A01 = j;
        this.A02 = new ZU();
        this.A03 = new IM(2786);
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final void A7q(CI ci) {
        this.A02.A4V(ci, new C0433Da(0, 1));
        ci.A5B();
        ci.ADX(new C0977Yt(-9223372036854775807L));
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final int ACk(CH ch, CN cn2) throws IOException, InterruptedException {
        int read = ch.read(this.A03.A00, 0, 2786);
        if (read == -1) {
            return -1;
        }
        this.A03.A0Z(0);
        this.A03.A0Y(read);
        if (!this.A00) {
            this.A02.ACJ(this.A01, true);
            this.A00 = true;
        }
        this.A02.A49(this.A03);
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final void ADW(long j, long j2) {
        this.A00 = false;
        this.A02.ADV();
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final boolean AE4(CH ch) throws IOException, InterruptedException {
        IM im = new IM(10);
        int i = 0;
        while (true) {
            ch.ACM(im.A00, 0, 10);
            if (A05[7].length() != 13) {
                throw new RuntimeException();
            }
            A05[5] = "IuOldmz1qGC5b";
            im.A0Z(0);
            if (im.A0H() != A07) {
                ch.ADN();
                ch.A3N(i);
                int startPosition = i;
                int i2 = 0;
                while (true) {
                    ch.ACM(im.A00, 0, 5);
                    im.A0Z(0);
                    if (im.A0J() != 2935) {
                        i2 = 0;
                        ch.ADN();
                        startPosition++;
                        if (startPosition - i >= 8192) {
                            return false;
                        }
                        ch.A3N(startPosition);
                    } else {
                        i2++;
                        if (A05[5].length() != 29) {
                            String[] strArr = A05;
                            strArr[3] = "a4rI";
                            strArr[6] = "EnE3h5gngskpWhoTVRGnZEO";
                            if (i2 >= 4) {
                                return true;
                            }
                        } else if (i2 >= 4) {
                            return true;
                        }
                        int A052 = C0382Ao.A05(im.A00);
                        if (A052 == -1) {
                            return false;
                        }
                        ch.A3N(A052 - 5);
                    }
                }
            } else {
                im.A0a(3);
                int A0E = im.A0E();
                i += A0E + 10;
                ch.A3N(A0E);
            }
        }
    }
}
