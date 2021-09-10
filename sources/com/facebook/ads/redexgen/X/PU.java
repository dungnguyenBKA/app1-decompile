package com.facebook.ads.redexgen.X;

public class PU extends AbstractRunnableC0603Kb {
    public final /* synthetic */ PD A00;

    public PU(PD pd) {
        this.A00 = pd;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        if (!(this.A00.A03)) {
            this.A00.A0A.A03(new AnonymousClass7s(this.A00.getCurrentPositionInMillis()));
            this.A00.A06.postDelayed(this, (long) this.A00.A00);
        }
    }
}
