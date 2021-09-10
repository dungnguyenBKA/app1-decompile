package com.facebook.ads.redexgen.X;

import android.os.Build;

public class WC implements AbstractC02806e {
    public final /* synthetic */ WM A00;

    public WC(WM wm) {
        this.A00 = wm;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (Build.VERSION.SDK_INT < 26) {
            return this.A00.A08(EnumC02916p.A05);
        }
        if (this.A00.A02 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        WM wm = this.A00;
        return wm.A0G(wm.A02.canRequestPackageInstalls());
    }
}
