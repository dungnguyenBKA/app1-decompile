package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdSize;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Fw  reason: case insensitive filesystem */
public class C0499Fw extends AbstractC0781Rc<AdSize> {
    public static byte[] A00;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 16);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{99, -95, -88, -97, -97};
    }

    public C0499Fw(String str) {
        super(str);
    }

    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final AnonymousClass0W A06(AdSize adSize) {
        String str;
        if (adSize == null) {
            str = A01(1, 4, 35);
        } else {
            str = adSize.getWidth() + A01(0, 1, 25) + adSize.getHeight();
        }
        return new AnonymousClass0W(this, str);
    }
}
