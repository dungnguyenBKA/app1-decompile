package com.facebook.ads.redexgen.X;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

public final class X5 extends AbstractC02956t<Float> {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 83);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{75};
    }

    public X5(long j, @Nullable C02936r r9, float f) {
        super(j, r9, Float.valueOf(f), EnumC02946s.A05);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02956t
    public final int A07() {
        return 4;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02956t
    public final JSONObject A09(JSONObject jSONObject) throws JSONException {
        jSONObject.put(A00(0, 1, FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD), A08());
        return jSONObject;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02956t
    public final boolean A0B(AbstractC02956t<Float> r3) {
        if (Math.abs(((Float) A08()).floatValue() - ((Float) r3.A08()).floatValue()) < C02715v.A01()) {
            return true;
        }
        return false;
    }
}
