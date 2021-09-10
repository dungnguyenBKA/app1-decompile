package com.facebook.ads.redexgen.X;

import android.os.Build;

public class VO implements AbstractC02806e {
    public final /* synthetic */ C0880Va A00;

    public VO(C0880Va va) {
        this.A00 = va;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        return this.A00.A05(Build.VERSION.SDK_INT);
    }
}
