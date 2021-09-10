package com.facebook.ads.redexgen.X;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.HashMap;

/* renamed from: com.facebook.ads.redexgen.X.6X  reason: invalid class name */
public class AnonymousClass6X extends HashMap<String, Integer> {
    public static byte[] A01;
    public final /* synthetic */ C0884Ve A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 15);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{123, -13};
    }

    public AnonymousClass6X(C0884Ve ve) {
        this.A00 = ve;
        put(A00(1, 1, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD), Integer.valueOf(this.A00.A00.A01.widthPixels));
        put(A00(0, 1, 4), Integer.valueOf(this.A00.A00.A01.heightPixels));
    }
}
