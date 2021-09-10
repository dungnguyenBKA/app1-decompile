package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.cV  reason: case insensitive filesystem */
public class C1161cV extends AbstractRunnableC0603Kb {
    public final /* synthetic */ L6 A00;

    public C1161cV(L6 l6) {
        this.A00 = l6;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        if (this.A00.A06()) {
            L6.A03(this.A00);
            L6.A00(this.A00).postDelayed(this, 250);
        }
    }
}
