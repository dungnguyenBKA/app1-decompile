package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Yc  reason: case insensitive filesystem */
public class C0960Yc extends AbstractRunnableC0603Kb {
    public final /* synthetic */ YV A00;
    public final /* synthetic */ boolean A01;

    public C0960Yc(YV yv, boolean z) {
        this.A00 = yv;
        this.A01 = z;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        boolean z;
        M4 A08 = this.A00.A0E.A08();
        if (A08 != null) {
            if (this.A01 || A08.A07()) {
                z = false;
            } else {
                z = true;
            }
            A08.setPageDetailsVisible(z);
            A08.setToolbarActionMode(this.A00.getCloseButtonStyle());
        }
    }
}
