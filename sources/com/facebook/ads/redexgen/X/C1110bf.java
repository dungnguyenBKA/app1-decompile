package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.bf  reason: case insensitive filesystem */
public class C1110bf implements L5 {
    public final /* synthetic */ int A00;
    public final /* synthetic */ AbstractC1106bb A01;

    public C1110bf(AbstractC1106bb bbVar, int i) {
        this.A01 = bbVar;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.L5
    public final void A9n() {
        this.A01.A03 = false;
        this.A01.A0X();
        this.A01.A0D.setToolbarActionMode(this.A01.getCloseButtonStyle());
    }

    @Override // com.facebook.ads.redexgen.X.L5
    public final void ABH(float f) {
        this.A01.A0D.setProgress(100.0f * (1.0f - (f / ((float) this.A00))));
    }
}
