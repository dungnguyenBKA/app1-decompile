package com.facebook.ads.redexgen.X;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

public final class S5 extends AnonymousClass16 implements Serializable {
    public static byte[] A00 = null;
    public static final long serialVersionUID = 2751287062553772011L;

    static {
        A04();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 1);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{123, 108, 126, 104, 123, 109, 108, 109, 86, Byte.MAX_VALUE, 96, 109, 108, 102};
    }

    public S5(List<AnonymousClass19> list) {
        super(list);
    }

    public static S5 A02(JSONObject jSONObject, XJ xj) {
        S5 s5 = new S5(AnonymousClass16.A01(jSONObject, xj, new S4()));
        s5.A0i(jSONObject);
        s5.A0g(A03(0, 14, 8));
        return s5;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass16
    public final int A0J() {
        if (A0N().A0E().A06() != null) {
            return 1;
        }
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass16
    public final int A0K() {
        return A0N().A0E().A04();
    }
}
