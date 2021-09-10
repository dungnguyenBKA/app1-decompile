package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Zb  reason: case insensitive filesystem */
public final class C0985Zb implements DM {
    public static byte[] A0D;
    public static String[] A0E;
    public static final double[] A0F = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    public long A00;
    public long A01;
    public long A02;
    public long A03;
    public long A04;
    public CS A05;
    public String A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public final DN A0B = new DN(128);
    public final boolean[] A0C = new boolean[4];

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A0E[1].length() != 23) {
                throw new RuntimeException();
            }
            A0E[4] = "Ri5OGo1CF8gLgqNPBzhcn52enWrdUOS9";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 59);
            i4++;
        }
    }

    public static void A02() {
        A0D = new byte[]{-2, -15, -20, -19, -9, -73, -11, -8, -19, -17, -70};
    }

    public static void A03() {
        A0E = new String[]{"YsqY7Lk0NG7yMwVwuR3aCKQ1vCFnnoD7", "imTBT5eeu9SEESxnKVa9Th5", "O0aT", "zBRiiCG0AgE79WafkQACjpG1QDeKkcp1", "wwjqIDfPN4cSDtn9coCmQZMwbPpUFodD", "uPTa", "JD3sFkMXr2jLKKNxvTNpqQokakbynhd6", "fAZgloKcDeiXibtKpEsUxRbbQwdcutNH"};
    }

    static {
        A03();
        A02();
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0099  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.util.Pair<com.facebook.ads.internal.exoplayer2.Format, java.lang.Long> A00(com.facebook.ads.redexgen.X.DN r21, java.lang.String r22) {
        /*
        // Method dump skipped, instructions count: 224
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0985Zb.A00(com.facebook.ads.redexgen.X.DN, java.lang.String):android.util.Pair");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00d2, code lost:
        if (r3 != false) goto L_0x00d4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x0122, code lost:
        if (r2 != -9223372036854775807L) goto L_0x0124;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x0140, code lost:
        if (r2 != -9223372036854775807L) goto L_0x0124;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x0145, code lost:
        if (r21.A0A == false) goto L_0x014d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x0147, code lost:
        r2 = r21.A03 + r21.A00;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x014d, code lost:
        r2 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x0157, code lost:
        if (r3 != false) goto L_0x00d4;
     */
    @Override // com.facebook.ads.redexgen.X.DM
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void A49(com.facebook.ads.redexgen.X.IM r22) {
        /*
        // Method dump skipped, instructions count: 360
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0985Zb.A49(com.facebook.ads.redexgen.X.IM):void");
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void A4V(CI ci, C0433Da da) {
        da.A06();
        this.A06 = da.A05();
        this.A05 = ci.AEM(da.A04(), 2);
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void ACI() {
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void ACJ(long j, boolean z) {
        this.A01 = j;
    }

    @Override // com.facebook.ads.redexgen.X.DM
    public final void ADV() {
        II.A0C(this.A0C);
        this.A0B.A01();
        this.A04 = 0;
        this.A0A = false;
    }
}
