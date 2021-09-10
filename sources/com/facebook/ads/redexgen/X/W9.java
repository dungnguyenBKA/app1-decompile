package com.facebook.ads.redexgen.X;

public class W9 implements AbstractC02806e {
    public final /* synthetic */ WM A00;

    public W9(WM wm) {
        this.A00 = wm;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (this.A00.A02 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        WM wm = this.A00;
        return wm.A09(wm.A02.getInstallerPackageName(this.A00.A00.getPackageName()));
    }
}
