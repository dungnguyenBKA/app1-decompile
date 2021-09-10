package com.facebook.ads.redexgen.X;

public class XQ implements L5 {
    public final /* synthetic */ int A00;
    public final /* synthetic */ AbstractRunnableC0603Kb A01;
    public final /* synthetic */ XM A02;

    public XQ(XM xm, int i, AbstractRunnableC0603Kb kb) {
        this.A02 = xm;
        this.A00 = i;
        this.A01 = kb;
    }

    @Override // com.facebook.ads.redexgen.X.L5
    public final void A9n() {
        this.A01.run();
    }

    @Override // com.facebook.ads.redexgen.X.L5
    public final void ABH(float f) {
        this.A02.A07.setProgress(100.0f * (1.0f - (f / ((float) this.A00))));
    }
}
