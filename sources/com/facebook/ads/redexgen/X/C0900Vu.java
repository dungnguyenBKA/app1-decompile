package com.facebook.ads.redexgen.X;

import android.app.KeyguardManager;
import android.content.Context;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Vu  reason: case insensitive filesystem */
public final class C0900Vu extends AnonymousClass6V {
    public static byte[] A01;
    public final KeyguardManager A00;

    static {
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 7);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A01 = new byte[]{-57, -63, -43, -61, -47, -67, -50, -64};
    }

    public C0900Vu(Context context, C02715v r5) {
        super(context, r5);
        this.A00 = (KeyguardManager) context.getSystemService(A02(0, 8, 85));
    }

    public final AbstractC02806e A0H() {
        return new C0896Vq(this);
    }

    public final AbstractC02806e A0I() {
        return new C0897Vr(this);
    }

    public final AbstractC02806e A0J() {
        return new C0898Vs(this);
    }

    public final AbstractC02806e A0K() {
        return new C0899Vt(this);
    }
}
