package com.facebook.ads.redexgen.X;

import android.os.Build;

/* renamed from: com.facebook.ads.redexgen.X.Ub  reason: case insensitive filesystem */
public class C0855Ub implements AbstractC02806e {
    public static String[] A01;
    public final /* synthetic */ C0863Uj A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"pBrDaZa5X5LjOgDS06qrKfvSDyGe8efw", "mQEhYUIy596kL", "EIforD6eBYb22Ex4JOKq", "k4SBaaSc1moa84J0CFgFz3nqLP2HVqmu", "u8nSh4T3SaBZfkGp86pLE93qaiXMklcf", "jMwuEx2OfYupc0", "IfOhRtB8SPti74hSuqBgnsqawc0MdhYN", "25E6wEyieKrSwG"};
    }

    public C0855Ub(C0863Uj uj) {
        this.A00 = uj;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (Build.VERSION.SDK_INT < 4) {
            C0863Uj uj = this.A00;
            String[] strArr = A01;
            if (strArr[7].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[7] = "5uTBAcIF1H8x94";
            strArr2[5] = "w8sP31VUPTTap4";
            return uj.A08(EnumC02916p.A05);
        } else if (this.A00.A01 == null) {
            return this.A00.A08(EnumC02916p.A07);
        } else {
            C0863Uj uj2 = this.A00;
            String[] strArr3 = A01;
            if (strArr3[3].charAt(9) != strArr3[6].charAt(9)) {
                String[] strArr4 = A01;
                strArr4[7] = "fRLqK3UXRIvALx";
                strArr4[5] = "beY33YfNkspfTw";
                return uj2.A05(uj2.A01.targetSdkVersion);
            }
            A01[4] = "qWUfrjWL8adA9tG6bFG21ciodwCrSrmB";
            return uj2.A05(uj2.A01.targetSdkVersion);
        }
    }
}
