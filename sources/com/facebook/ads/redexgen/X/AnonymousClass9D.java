package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.9D  reason: invalid class name */
public class AnonymousClass9D extends AbstractC0629Le {
    public static byte[] A01;
    public final /* synthetic */ OM A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 77);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{20, 32, 30, 33, 29, 22, 37, 22, 21};
    }

    public AnonymousClass9D(OM om) {
        this.A00 = om;
    }

    /* access modifiers changed from: private */
    /* renamed from: A02 */
    public final void A04(C03167w r6) {
        boolean z;
        OM om = this.A00;
        if (om.A0C.getState() != QB.A06) {
            z = true;
        } else {
            z = false;
        }
        om.A0H(r6, z);
        OL ol = this.A00.A0B;
        OM om2 = this.A00;
        ol.AC0(A00(0, 9, 100), om2.A04(om2.A0C.getDuration()));
    }
}
