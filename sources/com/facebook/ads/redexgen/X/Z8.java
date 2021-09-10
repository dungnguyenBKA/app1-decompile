package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.Format;
import com.facebook.ads.internal.exoplayer2.metadata.Metadata;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;

public final class Z8 implements CG {
    public static byte[] A0E;
    public static String[] A0F;
    public static final CJ A0G = new Z6();
    public static final int A0H = C0556Ic.A08(A04(0, 4, 32));
    public static final int A0I = C0556Ic.A08(A04(28, 4, 74));
    public static final int A0J = C0556Ic.A08(A04(32, 4, 79));
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public CI A04;
    public CS A05;
    public Z7 A06;
    public Metadata A07;
    public final int A08;
    public final long A09;
    public final CK A0A;
    public final CL A0B;
    public final CM A0C;
    public final IM A0D;

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 28);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A0E = new byte[]{117, 82, 90, 83, 97, 87, 83, 64, 81, 90, 87, 86, 18, 70, 93, 93, 18, 95, 83, 92, 75, 18, 80, 75, 70, 87, 65, 28, 0, 20, 4, 31, 11, 58, 61, 52};
    }

    public static void A06() {
        A0F = new String[]{"ydp2W5xsf3wxxmCItZRtLRLpaCcQN61V", "ZzeQ67WJ6", "MfxT7BiZm", "QAZkmCdKFAHfN7ilsO4NsWCm7AIOdsAB", "uXA2W", "sq6CLgUZZ", "GhmTF3RrY3ydpwpSZCJZy8aIHeXkOr61", "710SvX7FP4z"};
    }

    static {
        A06();
        A05();
    }

    public Z8() {
        this(0);
    }

    public Z8(int i) {
        this(i, -9223372036854775807L);
    }

    public Z8(int i, long j) {
        this.A08 = i;
        this.A09 = j;
        this.A0D = new IM(10);
        this.A0C = new CM();
        this.A0A = new CK();
        this.A02 = -9223372036854775807L;
        this.A0B = new CL();
    }

    /* JADX INFO: Multiple debug info for r12v0 'this'  com.facebook.ads.redexgen.X.Z8: [D('sampleHeaderData' int), D('bytesAppended' int)] */
    private int A00(CH ch) throws IOException, InterruptedException {
        if (this.A00 == 0) {
            ch.ADN();
            String[] strArr = A0F;
            if (strArr[1].length() != strArr[4].length()) {
                String[] strArr2 = A0F;
                strArr2[0] = "k6Z5PTGWNQqxWVGEWp2g14fMjsllqw2H";
                strArr2[6] = "hJNgcdrxKvM79jF48EqDHnrsGOClnbxU";
                if (!ch.ACN(this.A0D.A00, 0, 4, true)) {
                    return -1;
                }
                this.A0D.A0Z(0);
                int A092 = this.A0D.A09();
                if (!A07(A092, (long) this.A01) || CM.A00(A092) == -1) {
                    ch.AE3(1);
                    this.A01 = 0;
                    return 0;
                }
                CM.A05(A092, this.A0C);
                if (this.A02 == -9223372036854775807L) {
                    this.A02 = this.A06.A7L(ch.A71());
                    if (this.A09 != -9223372036854775807L) {
                        this.A02 += this.A09 - this.A06.A7L(0);
                    }
                }
                this.A00 = this.A0C.A02;
            } else {
                throw new RuntimeException();
            }
        }
        int ADQ = this.A05.ADQ(ch, this.A00, true);
        if (ADQ == -1) {
            return -1;
        }
        this.A00 -= ADQ;
        if (this.A00 > 0) {
            return 0;
        }
        this.A05.ADS(this.A02 + ((this.A03 * 1000000) / ((long) this.A0C.A03)), 1, this.A0C.A02, 0, null);
        this.A03 += (long) this.A0C.A04;
        this.A00 = 0;
        return 0;
    }

    public static int A01(IM im, int i) {
        if (im.A08() >= i + 4) {
            im.A0Z(i);
            int A092 = im.A09();
            if (A092 == A0J || A092 == A0H) {
                return A092;
            }
        }
        if (im.A08() < 40) {
            return 0;
        }
        im.A0Z(36);
        int A093 = im.A09();
        int i2 = A0I;
        if (A093 == i2) {
            return i2;
        }
        return 0;
    }

    private Z7 A02(CH ch) throws IOException, InterruptedException {
        ch.ACM(this.A0D.A00, 0, 4);
        this.A0D.A0Z(0);
        CM.A05(this.A0D.A09(), this.A0C);
        return new C0441Di(ch.A6i(), ch.A71(), this.A0C);
    }

    private Z7 A03(CH ch) throws IOException, InterruptedException {
        IM im = new IM(this.A0C.A02);
        ch.ACM(im.A00, 0, this.A0C.A02);
        int i = 21;
        if ((this.A0C.A05 & 1) != 0) {
            if (this.A0C.A01 != 1) {
                i = 36;
            }
        } else if (this.A0C.A01 == 1) {
            i = 13;
        }
        int A012 = A01(im, i);
        if (A012 == A0J || A012 == A0H) {
            C0438Df A013 = C0438Df.A01(ch.A6i(), ch.A71(), this.A0C, im);
            if (A013 != null && !this.A0A.A04()) {
                ch.ADN();
                ch.A3N(i + 141);
                ch.ACM(this.A0D.A00, 0, 3);
                this.A0D.A0Z(0);
                this.A0A.A05(this.A0D.A0H());
            }
            ch.AE3(this.A0C.A02);
            if (A013 == null || A013.A8D() || A012 != A0H) {
                return A013;
            }
            return A02(ch);
        } else if (A012 == A0I) {
            C0440Dh A002 = C0440Dh.A00(ch.A6i(), ch.A71(), this.A0C, im);
            ch.AE3(this.A0C.A02);
            return A002;
        } else {
            ch.ADN();
            return null;
        }
    }

    public static boolean A07(int i, long j) {
        return ((long) (-128000 & i)) == (-128000 & j);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x004b, code lost:
        if (r15 == false) goto L_0x0054;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x004d, code lost:
        r14.AE3(r5 + r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0051, code lost:
        r13.A01 = r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0053, code lost:
        return true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0054, code lost:
        r14.ADN();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x008e, code lost:
        if (r12 != false) goto L_0x0090;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean A08(com.facebook.ads.redexgen.X.CH r14, boolean r15) throws java.io.IOException, java.lang.InterruptedException {
        /*
        // Method dump skipped, instructions count: 256
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.Z8.A08(com.facebook.ads.redexgen.X.CH, boolean):boolean");
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final void A7q(CI ci) {
        this.A04 = ci;
        this.A05 = this.A04.AEM(0, 1);
        this.A04.A5B();
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final int ACk(CH ch, CN cn2) throws IOException, InterruptedException {
        Metadata metadata;
        if (this.A01 == 0) {
            try {
                A08(ch, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.A06 == null) {
            this.A06 = A03(ch);
            Z7 z7 = this.A06;
            if (z7 == null || (!z7.A8D() && (this.A08 & 1) != 0)) {
                Z7 A022 = A02(ch);
                String[] strArr = A0F;
                if (strArr[2].length() != strArr[5].length()) {
                    throw new RuntimeException();
                }
                A0F[3] = "vRoDRHRtSRtNnEEJ64K4r5ogXxosELXw";
                this.A06 = A022;
            }
            this.A04.ADX(this.A06);
            CS cs = this.A05;
            String str = this.A0C.A06;
            int i = this.A0C.A01;
            int i2 = this.A0C.A03;
            int i3 = this.A0A.A00;
            int i4 = this.A0A.A01;
            if ((this.A08 & 2) != 0) {
                metadata = null;
            } else {
                metadata = this.A07;
            }
            cs.A5P(Format.A05(null, str, null, -1, 4096, i, i2, -1, i3, i4, null, null, 0, null, metadata));
        }
        return A00(ch);
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final void ADW(long j, long j2) {
        this.A01 = 0;
        this.A02 = -9223372036854775807L;
        this.A03 = 0;
        this.A00 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final boolean AE4(CH ch) throws IOException, InterruptedException {
        return A08(ch, true);
    }
}
