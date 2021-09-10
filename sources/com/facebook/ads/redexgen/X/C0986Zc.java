package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Zc  reason: case insensitive filesystem */
public final class C0986Zc implements DM {
    public static byte[] A0E;
    public static String[] A0F;
    public long A00;
    public long A01;
    public CS A02;
    public DQ A03;
    public String A04;
    public boolean A05;
    public final DS A06 = new DS(8, 128);
    public final DS A07 = new DS(6, 128);
    public final DS A08 = new DS(7, 128);
    public final DV A09;
    public final IM A0A = new IM();
    public final boolean A0B;
    public final boolean A0C;
    public final boolean[] A0D = new boolean[3];

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 52);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A0E = new byte[]{37, 58, 55, 54, 60, 124, 50, 37, 48};
    }

    public static void A02() {
        A0F = new String[]{"OaAtDjibDffMS", "aj2yyuicdEn8dhTDbWTrD1WtuleVGPEx", "a3NvGU2CXdpQvxvcysdReyA6yUgKGJjf", "4BBSavRiCGZis8TiCNo6nDJqjRzxnCkr", "3Isw3BGBXoN1VbjlJcagr5xDVNXHwLpI", "HfhncQp7sGaDAl", "zNtUp", "pzzsrx2QpEHePoyNV"};
    }

    public C0986Zc(DV dv, boolean z, boolean z2) {
        this.A09 = dv;
        this.A0B = z;
        this.A0C = z2;
    }

    /* JADX INFO: Multiple debug info for r2v9 com.facebook.ads.redexgen.X.CS: [D('initializationData' java.util.List<byte[]>), D('spsData' com.facebook.ads.redexgen.X.IH)] */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0175, code lost:
        if (r4.A04() != false) goto L_0x0177;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x019f, code lost:
        if (r4.A04() != false) goto L_0x0177;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void A03(long r25, int r27, int r28, long r29) {
        /*
        // Method dump skipped, instructions count: 424
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0986Zc.A03(long, int, int, long):void");
    }

    private void A04(long j, int i, long j2) {
        if (!this.A05 || this.A03.A08()) {
            this.A08.A02(i);
            this.A06.A02(i);
        }
        this.A07.A02(i);
        String[] strArr = A0F;
        if (strArr[4].charAt(8) != strArr[2].charAt(8)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0F;
        strArr2[5] = "7DOfm1dA88ob89";
        strArr2[0] = "yqrgSqZS2XcB9";
        this.A03.A04(j, i, j2);
    }

    private void A05(byte[] bArr, int i, int i2) {
        if (!this.A05 || this.A03.A08()) {
            this.A08.A03(bArr, i, i2);
            this.A06.A03(bArr, i, i2);
        }
        this.A07.A03(bArr, i, i2);
        this.A03.A07(bArr, i, i2);
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void A49(IM im) {
        int offset;
        int A072 = im.A07();
        int A082 = im.A08();
        byte[] bArr = im.A00;
        this.A01 += (long) im.A05();
        this.A02.ADR(im, im.A05());
        while (true) {
            int A042 = II.A04(bArr, A072, A082, this.A0D);
            if (A042 == A082) {
                A05(bArr, A072, A082);
                return;
            }
            int A012 = II.A01(bArr, A042);
            int nalUnitOffset = A042 - A072;
            if (nalUnitOffset > 0) {
                A05(bArr, A072, A042);
            }
            int i = A082 - A042;
            long j = this.A01 - ((long) i);
            if (nalUnitOffset < 0) {
                offset = -nalUnitOffset;
            } else {
                offset = 0;
            }
            A03(j, i, offset, this.A00);
            A04(j, A012, this.A00);
            A072 = A042 + 3;
        }
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void A4V(CI ci, C0433Da da) {
        da.A06();
        this.A04 = da.A05();
        this.A02 = ci.AEM(da.A04(), 2);
        this.A03 = new DQ(this.A02, this.A0B, this.A0C);
        this.A09.A03(ci, da);
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void ACI() {
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void ACJ(long j, boolean z) {
        this.A00 = j;
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void ADV() {
        II.A0C(this.A0D);
        this.A08.A01();
        this.A06.A01();
        this.A07.A01();
        this.A03.A02();
        this.A01 = 0;
    }
}
