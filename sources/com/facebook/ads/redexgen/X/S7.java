package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;

public class S7 implements AnonymousClass75 {
    public final /* synthetic */ S9 A00;
    public final /* synthetic */ XJ A01;
    public final /* synthetic */ boolean A02;

    public S7(S9 s9, XJ xj, boolean z) {
        this.A00 = s9;
        this.A01 = xj;
        this.A02 = z;
    }

    private void A00(boolean z) {
        if (!z) {
            this.A00.A04.A9J(AdError.CACHE_ERROR);
        } else if (!J4.A15(this.A01) || !this.A02) {
            this.A00.A04.A9K();
        } else {
            S9 s9 = this.A00;
            s9.A02 = OT.A01(this.A01, s9.A03, 1, new S6(this));
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass75
    public final void A9h() {
        A00(false);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass75
    public final void A9o() {
        A00(true);
    }
}
