package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

public final class X3<T> extends AbstractC02956t<AbstractC02866k> {
    public static byte[] A00;
    public static String[] A01;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 40);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        byte[] bArr = {-73};
        String[] strArr = A01;
        if (strArr[0].charAt(26) != strArr[6].charAt(26)) {
            throw new RuntimeException();
        }
        A01[2] = "4uyIqP7n4WtKVi9Rm5fO0ecCuIXu1zOj";
        A00 = bArr;
    }

    public static void A02() {
        A01 = new String[]{"FFbUiuFwozfA0TvCJPANz8giqJj3Ey6e", "FdrdBbAzaIA4fvIQziUETi0i5pzm7d41", "y8Q9G33rxS5LLrNXiYcm9QLiBdw97p1I", "zt8", "kKbJCUSdm2baWh6S7cWsva6nWBGnb0Bq", "lZC5QmFNV9qqPs7G4jyYJaaKbEwmE4", "OkQ3tI89WJ1Nk7Gpl9REz34W9wj5LbGl", "vzboBPdl2BbWH2MdrrRCAvv17E0LNPzE"};
    }

    public X3(long j, @Nullable C02936r r9, AbstractC02866k r10) {
        super(j, r9, r10, EnumC02946s.A03);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02956t
    public final int A07() {
        return ((AbstractC02866k) A08()).ADz();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02956t
    public final JSONObject A09(JSONObject jSONObject) throws JSONException {
        return jSONObject.put((String) A00(0, 1, 25), (Object) ((AbstractC02866k) A08()).AEJ());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02956t
    public final boolean A0B(AbstractC02956t<AbstractC02866k> r3) {
        if (A08() == null || r3.A08() == null) {
            return A08() == null && r3.A08() == null;
        }
        return A08().A80(r3.A08());
    }
}
