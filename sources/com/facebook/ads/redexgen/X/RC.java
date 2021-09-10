package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Map;

public class RC extends QD {
    public static String[] A06;
    public final /* synthetic */ JC A00;
    public final /* synthetic */ C0625La A01;
    public final /* synthetic */ C0720Ot A02;
    public final /* synthetic */ RA A03;
    public final /* synthetic */ String A04;
    public final /* synthetic */ Map A05;

    static {
        A00();
    }

    public static void A00() {
        A06 = new String[]{"9EcwbXL", "xSjvPMkgWWioBuUjephCpzaMcXmM2sD", "H", "Z0OwbQNEejaaYPjBGD9d9AX", "LifEXsQyKShCOMizwIOXiweZ0", "XJXBCYBKjtegaNwUZmi8zWUKmanAO", "UJgIUi3fLAa", "b39pUeydvHz6vxm1zIrt3qO8a47iYX"};
    }

    public RC(RA ra, String str, C0720Ot ot, JC jc, Map map, C0625La la) {
        this.A03 = ra;
        this.A04 = str;
        this.A02 = ot;
        this.A00 = jc;
        this.A05 = map;
        this.A01 = la;
    }

    @Override // com.facebook.ads.redexgen.X.QD
    public final void A04() {
        if (!this.A03.A01.A0a()) {
            String str = this.A04;
            if (A06[0].length() != 7) {
                throw new RuntimeException();
            }
            A06[7] = "G0eOJNFPtps4qsYKpGpuAXPxSINW56";
            if (!TextUtils.isEmpty(str) && !this.A03.A04.get(this.A02.A02())) {
                this.A00.A8a(this.A04, new C0678Nc(this.A05).A04(this.A03.A02).A03(this.A01).A06());
                this.A03.A04.put(this.A02.A02(), true);
            }
        }
    }
}
