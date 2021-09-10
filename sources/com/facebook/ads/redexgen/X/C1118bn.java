package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.bn  reason: case insensitive filesystem */
public class C1118bn extends AbstractRunnableC0603Kb {
    public final /* synthetic */ C1119bo A00;

    public C1118bn(C1119bo boVar) {
        this.A00 = boVar;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        this.A00.A0C = false;
        if (this.A00.A0B.getQueue().isEmpty()) {
            this.A00.A0B.execute(this.A00.A0A);
        }
    }
}
