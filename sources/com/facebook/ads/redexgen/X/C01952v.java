package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.2v  reason: invalid class name and case insensitive filesystem */
public final class C01952v extends C3 {
    public static byte[] A01;
    public final GV A00;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 44);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{-83, -33, -53, -83, -50, -52, -40, -51, -50, -37};
    }

    public C01952v(List<byte[]> list) {
        super(A01(0, 10, 61));
        IM im = new IM(list.get(0));
        this.A00 = new GV(im.A0J(), im.A0J());
    }

    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final C1060ar A0d(byte[] bArr, int i, boolean z) {
        if (z) {
            this.A00.A0K();
        }
        return new C1060ar(this.A00.A0J(bArr, i));
    }
}
