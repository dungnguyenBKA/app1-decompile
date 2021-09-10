package com.facebook.ads.redexgen.X;

import android.os.SystemClock;

public class WX implements AbstractC02806e {
    public final /* synthetic */ WZ A00;

    public WX(WZ wz) {
        this.A00 = wz;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        return this.A00.A04(((float) SystemClock.elapsedRealtime()) / 1000.0f);
    }
}
