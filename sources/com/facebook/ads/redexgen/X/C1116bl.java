package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.json.JSONException;

/* renamed from: com.facebook.ads.redexgen.X.bl  reason: case insensitive filesystem */
public class C1116bl implements AbstractC0764Ql {
    public static byte[] A02;
    public final /* synthetic */ XK A00;
    public final /* synthetic */ AbstractC0762Qj A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 32);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-120, -121, -125, -106, -105, -108, -121, -127, -123, -111, -112, -120, -117, -119};
    }

    public C1116bl(AbstractC0762Qj qj, XK xk) {
        this.A01 = qj;
        this.A00 = xk;
    }

    /* JADX INFO: Multiple debug info for r4v0 'this'  com.facebook.ads.redexgen.X.bl: [D('e' org.json.JSONException), D('featureConfigJson' org.json.JSONObject)] */
    @Override // com.facebook.ads.redexgen.X.AbstractC0764Ql
    public final void A3v() {
        try {
            J4.A0N(this.A00).A21(this.A01.A6B().optJSONObject(A00(0, 14, 2)));
        } catch (JSONException e) {
            this.A00.A04().A3T(e);
        }
    }
}
