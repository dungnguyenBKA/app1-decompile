package com.facebook.ads.redexgen.X;

import android.net.TrafficStats;

/* renamed from: com.facebook.ads.redexgen.X.Wx  reason: case insensitive filesystem */
public class C0929Wx implements AbstractC02806e {
    public final /* synthetic */ C0931Wz A00;

    public C0929Wx(C0931Wz wz) {
        this.A00 = wz;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        return this.A00.A07(AnonymousClass72.A02(TrafficStats.getTotalRxBytes()));
    }
}
