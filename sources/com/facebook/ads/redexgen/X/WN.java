package com.facebook.ads.redexgen.X;

import android.os.Build;

public class WN implements AbstractC02806e {
    public final /* synthetic */ WQ A00;

    public WN(WQ wq) {
        this.A00 = wq;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (this.A00.A00 == null || Build.VERSION.SDK_INT < 7) {
            return this.A00.A08(EnumC02916p.A07);
        }
        WQ wq = this.A00;
        return wq.A0G(wq.A04());
    }
}
