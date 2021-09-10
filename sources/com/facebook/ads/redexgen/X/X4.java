package com.facebook.ads.redexgen.X;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

public final class X4 extends AbstractC02956t<C02926q> {
    public static byte[] A00;
    public static String[] A01;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A01;
            if (strArr[7].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            A01[1] = "j0mxEJ7PXI6EdILEdAOyominFOl70E0d";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION);
            i4++;
        }
    }

    public static void A01() {
        A00 = new byte[]{103};
    }

    public static void A02() {
        A01 = new String[]{"eVrT2", "NU6zFG4u0rUdQg4rmHCYhyhimIYEqcVW", "w8lzJt7", "2MtxRlAdf", "ofvbevjNzGuCdnDr", "yiSP4Q9AL7pZMBsKWJvcqboDvH4W4ekH", "Y5GBNp4gGulMUvRVJRIen52bKNtw4QSM", "rwvebAAeAhhSfHBQ"};
    }

    public X4(long j, @Nullable C02936r r9, C02926q r10) {
        super(j, r9, r10, EnumC02946s.A04);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02956t
    public final int A07() {
        return ((C02926q) A08()).A04();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02956t
    public final JSONObject A09(JSONObject jSONObject) throws JSONException {
        jSONObject.put(A00(0, 1, 126), ((C02926q) A08()).A09());
        return jSONObject;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x009a, code lost:
        if (r5.A08().equals(r4.A08()) != false) goto L_0x009c;
     */
    @Override // com.facebook.ads.redexgen.X.AbstractC02956t
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean A0B(com.facebook.ads.redexgen.X.AbstractC02956t<com.facebook.ads.redexgen.X.C02926q> r9) {
        /*
        // Method dump skipped, instructions count: 160
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.X4.A0B(com.facebook.ads.redexgen.X.6t):boolean");
    }
}
