package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Zr  reason: case insensitive filesystem */
public final class C1001Zr implements CG {
    public static byte[] A05;
    public static String[] A06;
    public static final CJ A07 = new C1000Zq();
    public int A00;
    public int A01;
    public CI A02;
    public CS A03;
    public C1002Zs A04;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 72);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{100, 95, 66, 68, 65, 65, 94, 67, 69, 84, 85, 17, 94, 67, 17, 68, 95, 67, 84, 82, 94, 86, 95, 88, 75, 84, 85, 17, 70, 80, 71, 17, 89, 84, 80, 85, 84, 67, 31, 107, Byte.MAX_VALUE, 110, 99, 101, 37, 120, 107, 125};
    }

    public static void A02() {
        A06 = new String[]{"TnN98hFrpPh0PRtpc088aNdcZccscvrw", "5aRpZ2NNsZI5w0o7DGq1eAqNryB", "mEVhsrU6MzIr1qyqOlGiN", "yrEmV4s21h7BLFfB7siMTKTjJQry3", "EfBKzRp", "ss80CflBP4AmUjPde3BocO42m8Tqd1M1", "kqV6vinpOYrD", "3vWKjffhrtNYzin5lJ6IQFsZaR1xXQhq"};
    }

    static {
        A02();
        A01();
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final void A7q(CI ci) {
        this.A02 = ci;
        this.A03 = ci.AEM(0, 1);
        this.A04 = null;
        ci.A5B();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x00a9, code lost:
        if (r6 != -1) goto L_0x00ab;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x00e0, code lost:
        if (r6 != -1) goto L_0x00ab;
     */
    @Override // com.facebook.ads.redexgen.X.CG
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int ACk(com.facebook.ads.redexgen.X.CH r19, com.facebook.ads.redexgen.X.CN r20) throws java.io.IOException, java.lang.InterruptedException {
        /*
        // Method dump skipped, instructions count: 248
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1001Zr.ACk(com.facebook.ads.redexgen.X.CH, com.facebook.ads.redexgen.X.CN):int");
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final void ADW(long j, long j2) {
        this.A01 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final boolean AE4(CH ch) throws IOException, InterruptedException {
        return C0436Dd.A00(ch) != null;
    }
}
