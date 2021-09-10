package com.facebook.ads.redexgen.X;

import android.app.ActivityManager;

public class UN implements AbstractC02806e {
    public final /* synthetic */ UO A00;

    public UN(UO uo) {
        this.A00 = uo;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (this.A00.A02 != null) {
            return this.A00.A0G(ActivityManager.isRunningInTestHarness());
        }
        return this.A00.A08(EnumC02916p.A07);
    }
}
