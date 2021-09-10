package com.facebook.ads.redexgen.X;

import android.app.ActivityManager;

public class UD implements AbstractC02806e {
    public static String[] A01;
    public final /* synthetic */ UO A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"ks6FgoJovve7iHM2pZkl", "wha53u", "49wSJ7V8XkDKZTUcjMDnpoSn", "1JQ5I5ad77Yrp3ewkirQ0oRutiEmvr6i", "jAt3ZHaaMbDXz0fIQiir7V", "EKdcAjdCbYFTR4bnYqi4SV", "MwtlcC", "w1RouBmka6J1zGDRhikmrfItH78owLWg"};
    }

    public UD(UO uo) {
        this.A00 = uo;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (this.A00.A02 != null) {
            return this.A00.A0G(ActivityManager.isUserAMonkey());
        }
        UO uo = this.A00;
        EnumC02916p r3 = EnumC02916p.A07;
        if (A01[2].length() != 23) {
            String[] strArr = A01;
            strArr[3] = "MHidzBjnmsHNQkooJipxy3AaWgleVPOv";
            strArr[7] = "EW2Ra62KpqEXQLSIkiFDqiivYFqdEGvM";
            return uo.A08(r3);
        }
        throw new RuntimeException();
    }
}
