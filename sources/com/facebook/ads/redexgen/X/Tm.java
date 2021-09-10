package com.facebook.ads.redexgen.X;

public class Tm extends KO {
    public final /* synthetic */ C0841Tn A00;

    public Tm(C0841Tn tn) {
        this.A00 = tn;
    }

    @Override // com.facebook.ads.redexgen.X.KO
    public final void A01() {
        if (this.A00.A01.A00.A02() != null) {
            this.A00.A01.A00.A02().onAdsLoaded();
        }
    }
}
