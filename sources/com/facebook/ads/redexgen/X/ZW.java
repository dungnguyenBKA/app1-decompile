package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.util.Arrays;
import org.apache.http.HttpStatus;

public final class ZW implements CG {
    public static byte[] A04;
    public static String[] A05;
    public static final CJ A06 = new ZV();
    public static final int A07 = C0556Ic.A08(A00(0, 3, 42));
    public boolean A00;
    public final long A01;
    public final ZX A02;
    public final IM A03;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 120);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{27, 22, 97};
    }

    public static void A02() {
        A05 = new String[]{"6Yd3MlxO6zs0On0JMF5Pwnois3aNTjpE", "MmQBoaYzrmdPmtEAYQ3R1Y6Mcsh6By7B", "7RUBoC8KCwVWfiCX9SWb", "GS41ND25W7ytYawGpGonJQP9IOOENLXr", "lL4oomLzy5vPLaNFQ0K", "J26", "emQAR3GMgLzBn72fJq6a", "GcSIxJRAUXsHB0u2DOmppTTbOqtsj228"};
    }

    static {
        A02();
        A01();
    }

    public ZW() {
        this(0);
    }

    public ZW(long j) {
        this.A01 = j;
        this.A02 = new ZX(true);
        this.A03 = new IM((int) HttpStatus.SC_OK);
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final void A7q(CI ci) {
        this.A02.A4V(ci, new C0433Da(0, 1));
        ci.A5B();
        ci.ADX(new C0977Yt(-9223372036854775807L));
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final int ACk(CH ch, CN cn2) throws IOException, InterruptedException {
        int read = ch.read(this.A03.A00, 0, HttpStatus.SC_OK);
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

    /* JADX INFO: Multiple debug info for r0v9 int: [D('validFramesSize' int), D('syncBytes' int)] */
    @Override // com.facebook.ads.redexgen.X.CG
    public final boolean AE4(CH ch) throws IOException, InterruptedException {
        IM im = new IM(10);
        IL il = new IL(im.A00);
        int validFramesCount = 0;
        while (true) {
            ch.ACM(im.A00, 0, 10);
            im.A0Z(0);
            if (im.A0H() != A07) {
                break;
            }
            im.A0a(3);
            int A0E = im.A0E();
            validFramesCount += A0E + 10;
            ch.A3N(A0E);
        }
        ch.ADN();
        ch.A3N(validFramesCount);
        int i = validFramesCount;
        int i2 = 0;
        if (A05[4].length() != 20) {
            A05[1] = "mY90xJHLqPMDpFXgmiZe2UkYD68ZyI7P";
            int i3 = 0;
            while (true) {
                ch.ACM(im.A00, 0, 2);
                im.A0Z(0);
                if ((65526 & im.A0J()) != 65520) {
                    i3 = 0;
                    i2 = 0;
                    ch.ADN();
                    i++;
                    if (i - validFramesCount >= 8192) {
                        return false;
                    }
                    ch.A3N(i);
                } else {
                    i3++;
                    if (i3 >= 4 && i2 > 188) {
                        return true;
                    }
                    ch.ACM(im.A00, 0, 4);
                    il.A08(14);
                    int A052 = il.A05(13);
                    if (A052 <= 6) {
                        return false;
                    }
                    ch.A3N(A052 - 6);
                    i2 += A052;
                }
            }
        } else {
            throw new RuntimeException();
        }
    }
}
