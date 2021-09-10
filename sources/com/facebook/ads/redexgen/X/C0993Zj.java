package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
import java.io.IOException;

/* renamed from: com.facebook.ads.redexgen.X.Zj  reason: case insensitive filesystem */
public final class C0993Zj implements CG {
    public static String[] A08;
    public static final CJ A09 = new C0992Zi();
    public long A00;
    public CI A01;
    public boolean A02;
    public boolean A03;
    public boolean A04;
    public final SparseArray<DT> A05;
    public final IM A06;
    public final IY A07;

    public static void A00() {
        A08 = new String[]{"", "mExdGVP0maPlz", "mtU4GW9lJGPRgwi7WTtJ47xTDMOD9Jvz", "mnVK2jaR5CYO63Y95SEKprVffrLm5k0s", "WHnhbYArFQVibafDHBFVvoYN0aOa9WUH", "bzekXst0bt0AdcZvIiwJXkkJcIHRgIjU", "gyTL2jV1VgKAzlNybmW", "q"};
    }

    static {
        A00();
    }

    public C0993Zj() {
        this(new IY(0));
    }

    public C0993Zj(IY iy) {
        this.A07 = iy;
        this.A06 = new IM(4096);
        this.A05 = new SparseArray<>();
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final void A7q(CI ci) {
        this.A01 = ci;
        ci.ADX(new C0977Yt(-9223372036854775807L));
    }

    /* JADX INFO: Multiple debug info for r10v0 com.facebook.ads.redexgen.X.CH: [D('systemHeaderLength' int), D('payloadLength' int), D('packStuffingLength' int)] */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x0133, code lost:
        if (r4 == null) goto L_0x0135;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x0139, code lost:
        if (r4 == null) goto L_0x0135;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x013c, code lost:
        r9.A06.A0X(r5);
        r10.readFully(r9.A06.A00, 0, r5);
        r9.A06.A0Z(6);
        r4.A03(r9.A06);
        r1 = r9.A06;
        r1.A0Y(r1.A06());
     */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0102  */
    @Override // com.facebook.ads.redexgen.X.CG
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int ACk(com.facebook.ads.redexgen.X.CH r10, com.facebook.ads.redexgen.X.CN r11) throws java.io.IOException, java.lang.InterruptedException {
        /*
        // Method dump skipped, instructions count: 353
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0993Zj.ACk(com.facebook.ads.redexgen.X.CH, com.facebook.ads.redexgen.X.CN):int");
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final void ADW(long j, long j2) {
        this.A07.A09();
        for (int i = 0; i < this.A05.size(); i++) {
            this.A05.valueAt(i).A02();
        }
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final boolean AE4(CH ch) throws IOException, InterruptedException {
        byte[] bArr = new byte[14];
        ch.ACM(bArr, 0, 14);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        if (A08[7].length() != 3) {
            A08[4] = "dWjhqjXulz1hd3AtKzuGBSPNQhOMyT1H";
            ch.A3N(bArr[13] & 7);
            ch.ACM(bArr, 0, 3);
            if (1 == ((bArr[2] & 255) | ((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8))) {
                return true;
            }
            return false;
        }
        throw new RuntimeException();
    }
}
