package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Arrays;

public final class Z2 implements CY {
    public static byte[] A07;
    public int A00;
    public int A01;
    public long A02;
    public AbstractC0418Ca A03;
    public final C0419Cf A04 = new C0419Cf();
    public final ArrayDeque<CX> A05 = new ArrayDeque<>();
    public final byte[] A06 = new byte[8];

    static {
        A05();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 28);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A07 = new byte[]{101, -118, -110, 125, -120, -123, Byte.MIN_VALUE, 60, -127, -120, -127, -119, -127, -118, -112, 60, -112, -107, -116, -127, 60, -73, -36, -28, -49, -38, -41, -46, -114, -44, -38, -35, -49, -30, -114, -31, -41, -24, -45, -88, -114, -95, -58, -50, -71, -60, -63, -68, 120, -63, -58, -52, -67, -65, -67, -54, 120, -53, -63, -46, -67, -110, 120, -64, -31, -33, -42, -37, -44, -115, -46, -39, -46, -38, -46, -37, -31, -115, -32, -42, -25, -46, -89, -115};
    }

    private double A00(CH ch, int i) throws IOException, InterruptedException {
        long A022 = A02(ch, i);
        if (i == 4) {
            return (double) Float.intBitsToFloat((int) A022);
        }
        return Double.longBitsToDouble(A022);
    }

    private long A01(CH ch) throws IOException, InterruptedException {
        ch.ADN();
        while (true) {
            ch.ACM(this.A06, 0, 4);
            int A002 = C0419Cf.A00(this.A06[0]);
            if (A002 != -1 && A002 <= 4) {
                int A012 = (int) C0419Cf.A01(this.A06, A002, false);
                if (this.A03.A85(A012)) {
                    ch.AE3(A002);
                    return (long) A012;
                }
            }
            ch.AE3(1);
        }
    }

    private long A02(CH ch, int i) throws IOException, InterruptedException {
        ch.readFully(this.A06, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | ((long) (this.A06[i2] & 255));
        }
        return j;
    }

    private String A04(CH ch, int trimmedLength) throws IOException, InterruptedException {
        if (trimmedLength == 0) {
            return A03(0, 0, 34);
        }
        byte[] bArr = new byte[trimmedLength];
        ch.readFully(bArr, 0, trimmedLength);
        while (trimmedLength > 0 && bArr[trimmedLength - 1] == 0) {
            trimmedLength--;
        }
        return new String(bArr, 0, trimmedLength);
    }

    @Override // com.facebook.ads.redexgen.X.CY
    public final void A7r(AbstractC0418Ca ca) {
        this.A03 = ca;
    }

    @Override // com.facebook.ads.redexgen.X.CY
    public final boolean ACm(CH ch) throws IOException, InterruptedException {
        boolean z;
        if (this.A03 != null) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A04(z);
        while (true) {
            if (this.A05.isEmpty() || ch.A71() < this.A05.peek().A01) {
                if (this.A01 == 0) {
                    long A052 = this.A04.A05(ch, true, false, 4);
                    if (A052 == -2) {
                        A052 = A01(ch);
                    }
                    if (A052 == -1) {
                        return false;
                    }
                    this.A00 = (int) A052;
                    this.A01 = 1;
                }
                if (this.A01 == 1) {
                    this.A02 = this.A04.A05(ch, false, true, 8);
                    this.A01 = 2;
                }
                int A6K = this.A03.A6K(this.A00);
                if (A6K == 0) {
                    ch.AE3((int) this.A02);
                    this.A01 = 0;
                } else if (A6K == 1) {
                    long A71 = ch.A71();
                    this.A05.push(new CX(this.A00, A71 + this.A02));
                    this.A03.AE7(this.A00, A71, this.A02);
                    this.A01 = 0;
                    return true;
                } else if (A6K == 2) {
                    long j = this.A02;
                    if (j <= 8) {
                        this.A03.A7t(this.A00, A02(ch, (int) j));
                        this.A01 = 0;
                        return true;
                    }
                    throw new AJ(A03(41, 22, 60) + this.A02);
                } else if (A6K == 3) {
                    long j2 = this.A02;
                    if (j2 <= 2147483647L) {
                        this.A03.AEF(this.A00, A04(ch, (int) j2));
                        this.A01 = 0;
                        return true;
                    }
                    throw new AJ(A03(63, 21, 81) + this.A02);
                } else if (A6K == 4) {
                    this.A03.A3s(this.A00, (int) this.A02, ch);
                    this.A01 = 0;
                    return true;
                } else if (A6K == 5) {
                    long j3 = this.A02;
                    if (j3 == 4 || j3 == 8) {
                        this.A03.A5N(this.A00, A00(ch, (int) this.A02));
                        this.A01 = 0;
                        return true;
                    }
                    throw new AJ(A03(21, 20, 82) + this.A02);
                } else {
                    throw new AJ(A03(0, 21, 0) + A6K);
                }
            } else {
                this.A03.A5A(this.A05.pop().A00);
                return true;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.CY
    public final void reset() {
        this.A01 = 0;
        this.A05.clear();
        this.A04.A06();
    }
}
