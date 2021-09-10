package com.facebook.ads.redexgen.X;

import android.os.Build;

public class VQ implements AbstractC02806e {
    public final /* synthetic */ C0880Va A00;

    public VQ(C0880Va va) {
        this.A00 = va;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (Build.VERSION.SDK_INT < 23) {
            return this.A00.A08(EnumC02916p.A05);
        }
        return this.A00.A09(Build.VERSION.BASE_OS);
    }
}
