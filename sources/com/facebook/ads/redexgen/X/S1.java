package com.facebook.ads.redexgen.X;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

public final class S1 extends AnonymousClass16 implements Serializable {
    public static byte[] A00 = null;
    public static final long serialVersionUID = 5751287062553772011L;

    static {
        A04();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 98);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{72, 79, 85, 68, 83, 82, 85, 72, 85, 72, 64, 77};
    }

    public S1(List<AnonymousClass19> list) {
        super(list);
    }

    public static S1 A02(JSONObject jSONObject, XJ xj) {
        S1 s1 = new S1(AnonymousClass16.A01(jSONObject, xj, new S0()));
        s1.A0i(jSONObject);
        s1.A0g(A03(0, 12, 67));
        return s1;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass16
    public final int A0J() {
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass16
    public final int A0K() {
        return 0;
    }
}
