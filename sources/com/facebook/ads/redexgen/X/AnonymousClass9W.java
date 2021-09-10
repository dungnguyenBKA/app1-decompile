package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.9W  reason: invalid class name */
public class AnonymousClass9W extends KW {
    public static byte[] A01;
    public final /* synthetic */ OM A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 93);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{28, 13, 25, 31, 9};
    }

    public AnonymousClass9W(OM om) {
        this.A00 = om;
    }

    /* access modifiers changed from: private */
    /* renamed from: A02 */
    public final void A04(C03157v r6) {
        this.A00.A0B.AC0(A00(0, 5, 49), this.A00.A03());
    }
}
