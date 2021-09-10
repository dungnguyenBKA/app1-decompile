package com.facebook.ads.redexgen.X;

import java.io.IOException;

/* renamed from: com.facebook.ads.redexgen.X.aS  reason: case insensitive filesystem */
public final class C1035aS implements FZ {
    public final int A00;
    public final /* synthetic */ C5 A01;

    public C1035aS(C5 c5, int i) {
        this.A01 = c5;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.FZ
    public final boolean A89() {
        return this.A01.A0T(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.FZ
    public final void A8z() throws IOException {
        this.A01.A0R();
    }

    @Override // com.facebook.ads.redexgen.X.FZ
    public final int ACn(AD ad, YY yy, boolean z) {
        return this.A01.A0Q(this.A00, ad, yy, z);
    }

    @Override // com.facebook.ads.redexgen.X.FZ
    public final int AE2(long j) {
        return this.A01.A0P(this.A00, j);
    }
}
