package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.9d  reason: invalid class name and case insensitive filesystem */
public class C03469d extends KQ {
    public static byte[] A01;
    public final /* synthetic */ OM A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 15);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{65, 93, 80, 72};
    }

    public C03469d(OM om) {
        this.A00 = om;
    }

    /* access modifiers changed from: private */
    /* renamed from: A02 */
    public final void A04(KU ku) {
        this.A00.A04 = true;
        this.A00.A0B.AC0(A00(0, 4, 62), this.A00.A03());
    }
}
