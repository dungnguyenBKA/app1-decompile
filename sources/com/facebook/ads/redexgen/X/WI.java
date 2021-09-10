package com.facebook.ads.redexgen.X;

import android.os.Build;

public class WI implements AbstractC02806e {
    public static String[] A01;
    public final /* synthetic */ WM A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"zJajY9dZZxYFsLRzsvnBiwQWt0HnizLC", "gzFaheVOcPUMbI38nwUIVYmc91b5uR", "ce0KJPPQByTAaQ9ATxZk2kwW24DeaJ9j", "R6Wiv8wmYaZdmPdgU3hXsutSf", "job2ys34errF3to", "kwK9VFGEGX8wPEd", "j3AidPNHk3dBWfN6HPyZ7", "rfM1O6R1RyyEf1DP"};
    }

    public WI(WM wm) {
        this.A00 = wm;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (this.A00.A01 == null || Build.VERSION.SDK_INT < 22) {
            return this.A00.A08(EnumC02916p.A07);
        }
        WM wm = this.A00;
        if (A01[1].length() != 30) {
            throw new RuntimeException();
        }
        A01[6] = "SsABSdrOWb5CHUfmSefeH";
        return wm.A05(wm.A01.baseRevisionCode);
    }
}
