package com.facebook.ads.redexgen.X;

public class TX extends KO {
    public final /* synthetic */ C0829Ta A00;

    public TX(C0829Ta ta) {
        this.A00 = ta;
    }

    @Override // com.facebook.ads.redexgen.X.KO
    public final void A01() {
        if (this.A00.A01.A07() != null) {
            this.A00.A01.A07().onAdLoaded(this.A00.A01.A08());
        }
    }
}
