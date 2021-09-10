package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Map;

public class YE extends QD {
    public static byte[] A01;
    public final /* synthetic */ Y4 A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 65);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-30, -15, -22, -35, -26, -15};
    }

    public YE(Y4 y4) {
        this.A00 = y4;
    }

    @Override // com.facebook.ads.redexgen.X.QD
    public final void A04() {
        if (!this.A00.A0A.A08()) {
            this.A00.A0A.A06();
            Map<String, String> A06 = new C0678Nc().A04(this.A00.A0G).A03(this.A00.A0A).A06();
            String A0P = this.A00.A0E.A0P();
            if (!TextUtils.isEmpty(A0P)) {
                A06.put(A00(0, 6, 61), A0P);
            }
            this.A00.A07.A8a(this.A00.A05.A0T(), A06);
            this.A00.A06.A0A().A2a();
            AnonymousClass24.A00(this.A00.A05.A0V());
            if (this.A00.A0B != null) {
                this.A00.A0B.A3t(this.A00.A0C.A6b());
            }
        }
    }
}
