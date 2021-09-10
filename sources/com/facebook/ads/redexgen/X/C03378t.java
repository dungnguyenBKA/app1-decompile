package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.8t  reason: invalid class name and case insensitive filesystem */
public class C03378t extends L4 {
    public static byte[] A01;
    public final /* synthetic */ OM A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 17);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-78, -65, -65, -68, -65};
    }

    public C03378t(OM om) {
        this.A00 = om;
    }

    /* access modifiers changed from: private */
    /* renamed from: A02 */
    public final void A04(C0626Lb lb) {
        new Handler(Looper.getMainLooper()).post(new OK(this));
        this.A00.A0B.AC0(A00(0, 5, 60), this.A00.A03());
    }
}
