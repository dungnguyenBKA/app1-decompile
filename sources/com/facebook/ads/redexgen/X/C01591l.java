package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.1l  reason: invalid class name and case insensitive filesystem */
public final class C01591l {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 18);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{25, 95, 67, 90, 91, 124, 107, 121, 111, 124, 106, 107, 106, 81, 120, 103, 106, 107, 97};
    }

    /* JADX INFO: Multiple debug info for r13v0 com.facebook.ads.redexgen.X.7D: [D('useExoPlayerCacheForDSL' boolean), D('cacheFileData' com.facebook.ads.redexgen.X.7C)] */
    public static void A02(XJ xj, AnonymousClass7D r13, S5 s5) {
        r13.A0U(new AnonymousClass7A(s5.A0Q().A01(), C0719Os.A04, C0719Os.A04, s5.A0Y(), A00(5, 14, 28)));
        boolean A0m = s5.A0m();
        if (A0m) {
            AnonymousClass7C r3 = new AnonymousClass7C(s5.A0U(), s5.A0Y(), A00(5, 14, 28));
            r3.A04 = true;
            r3.A03 = A00(0, 5, 37);
            r13.A0V(r3);
        }
        boolean A1t = J4.A1t(xj, C0751Py.A04());
        AnonymousClass7C r7 = new AnonymousClass7C(s5.A0N().A0E().A08(), s5.A0Y(), A00(5, 14, 28), s5.A0N().A0E().A05());
        if (!A0m || A1t) {
            r13.A0Y(r7);
        } else {
            r13.A0V(r7);
        }
        r13.A0U(new AnonymousClass7A(s5.A0N().A0E().A07(), C01541g.A00(s5.A0N().A0E()), C01541g.A01(s5.A0N().A0E()), s5.A0Y(), A00(5, 14, 28)));
        for (String str : s5.A0N().A0H().A00()) {
            r13.A0U(new AnonymousClass7A(str, -1, -1, s5.A0Y(), A00(5, 14, 28)));
        }
    }
}
