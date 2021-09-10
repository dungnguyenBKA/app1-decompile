package com.facebook.ads.redexgen.X;

public class WG implements AbstractC02806e {
    public final /* synthetic */ WM A00;

    public WG(WM wm) {
        this.A00 = wm;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (this.A00.A01 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        WM wm = this.A00;
        return wm.A09(wm.A01.versionName);
    }
}
