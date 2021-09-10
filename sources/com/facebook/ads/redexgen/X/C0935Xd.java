package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Xd  reason: case insensitive filesystem */
public class C0935Xd extends AbstractRunnableC0603Kb {
    public static byte[] A02;
    public final /* synthetic */ OM A00;
    public final /* synthetic */ AnonymousClass7s A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 46);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{93, 106, 121, 121, 122, 109, 118, 113, 120, 63, 118, 113, 123, 122, 121, 118, 113, 118, 107, 122, 115, 102};
    }

    public C0935Xd(OM om, AnonymousClass7s r2) {
        this.A00 = om;
        this.A01 = r2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        if (this.A00.A0C.getState() == QB.A02 && this.A00.A0C.getCurrentPositionInMillis() == this.A01.A00()) {
            this.A00.A0J(A00(0, 22, 49));
        }
    }
}
