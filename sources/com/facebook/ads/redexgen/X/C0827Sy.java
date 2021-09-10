package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Sy  reason: case insensitive filesystem */
public class C0827Sy extends AbstractRunnableC0603Kb {
    public static byte[] A02;
    public final /* synthetic */ AnonymousClass86 A00;
    public final /* synthetic */ AnonymousClass7s A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 53);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-126, -75, -90, -90, -91, -78, -87, -82, -89, 96, -87, -82, -92, -91, -90, -87, -82, -87, -76, -91, -84, -71};
    }

    public C0827Sy(AnonymousClass86 r1, AnonymousClass7s r2) {
        this.A00 = r1;
        this.A01 = r2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        if (this.A00.A0A.getState() == QB.A02 && this.A00.A0A.getCurrentPositionInMillis() == this.A01.A00()) {
            this.A00.A0H(A00(0, 22, 11));
        }
    }
}
