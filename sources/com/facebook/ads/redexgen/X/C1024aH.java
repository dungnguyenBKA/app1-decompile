package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.aH  reason: case insensitive filesystem */
public class C1024aH extends QD {
    public final /* synthetic */ C1020aD A00;

    public C1024aH(C1020aD aDVar) {
        this.A00 = aDVar;
    }

    @Override // com.facebook.ads.redexgen.X.QD
    public final void A04() {
        if (!J4.A19(this.A00.A07)) {
            if ((this.A00.A04) || !this.A00.A01.A08()) {
                this.A00.A01.A06();
            }
            if (this.A00.A08.get() != null) {
                ((NV) this.A00.A08.get()).AAL();
            }
        } else if (((this.A00.A04) || !this.A00.A01.A08()) && this.A00.A08.get() != null) {
            this.A00.A01.A06();
            ((NV) this.A00.A08.get()).AAL();
        }
    }
}
