package com.facebook.ads.redexgen.X;

import android.os.Build;

public class WF implements AbstractC02806e {
    public final /* synthetic */ WM A00;

    public WF(WM wm) {
        this.A00 = wm;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (this.A00.A01 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        if (Build.VERSION.SDK_INT >= 28) {
            WM wm = this.A00;
            return wm.A07(wm.A01.getLongVersionCode());
        }
        WM wm2 = this.A00;
        return wm2.A05(wm2.A01.versionCode);
    }
}
