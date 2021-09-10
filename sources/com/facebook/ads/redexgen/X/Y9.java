package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.json.JSONObject;

public class Y9 implements OL {
    public static byte[] A01;
    public final /* synthetic */ Y4 A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 23);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-49, -53, -64, -40};
    }

    public Y9(Y4 y4) {
        this.A00 = y4;
    }

    @Override // com.facebook.ads.redexgen.X.OL
    public final void AC0(String str, JSONObject jSONObject) {
        if (str.equals(A00(0, 4, 72))) {
            this.A00.AEB();
        }
        this.A00.A0E.A0c(str, jSONObject);
    }
}
