package com.facebook.ads.redexgen.X;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Uy  reason: case insensitive filesystem */
public class C0878Uy implements AbstractC02806e {
    public static byte[] A01;
    public final /* synthetic */ V4 A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 98);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{74, 59, 67, 70, 59, 72, 55, 74, 75, 72, 59};
    }

    public C0878Uy(V4 v4) {
        this.A00 = v4;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        return this.A00.A0B(A00(0, 11, 116), RecyclerView.UNDEFINED_DURATION);
    }
}
