package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

public final class X9 extends AbstractC02956t<Long> {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 44);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{-41};
    }

    public X9(long j, @Nullable C02936r r9, long j2) {
        super(j, r9, Long.valueOf(j2), EnumC02946s.A09);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02956t
    public final int A07() {
        return 8;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02956t
    public final JSONObject A09(JSONObject jSONObject) throws JSONException {
        jSONObject.put(A00(0, 1, 53), A08());
        return jSONObject;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02956t
    public final boolean A0B(AbstractC02956t<Long> r3) {
        return ((Long) A08()).equals(r3.A08());
    }
}
