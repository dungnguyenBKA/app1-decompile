package com.facebook.ads.redexgen.X;

import android.content.pm.ActivityInfo;

public class WK implements AbstractC02806e {
    public static String[] A01;
    public final /* synthetic */ WM A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"BjEOBj6HSQS8i4DRK2qoJX27hoC0R4DA", "kauKwe7CVPrqe4cOgSIwGmxqelbhToEk", "XZC7QZo7Jtp8ceyvJGPCObnucv7Agiw", "JUan8YMmX5ogxlB6aq0dkHVlKOHTqFeF", "IuTolVrjy7qRtOK6QcTLTodgNQuY61bU", "4L2hIP4Kb6m", "Yg6y90VIZ7Ah3ybSxqXW6wOi2HMwnGfT", "hl8KcVIJUlPiTEXEjbalUYczznSZgz62"};
    }

    public WK(WM wm) {
        this.A00 = wm;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (this.A00.A04 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        WM wm = this.A00;
        ActivityInfo[] activityInfoArr = wm.A04;
        if (A01[3].charAt(20) != 'k') {
            throw new RuntimeException();
        }
        A01[4] = "ZFJR0DMAu8l3jjK6mMcKAcH3eLfgQnHb";
        return wm.A05(activityInfoArr.length);
    }
}
