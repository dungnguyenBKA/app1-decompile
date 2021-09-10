package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;

/* renamed from: com.facebook.ads.redexgen.X.Rr  reason: case insensitive filesystem */
public class C0796Rr implements AbstractC01561i {
    public final /* synthetic */ FU A00;
    public final /* synthetic */ AbstractC0801Rw A01;

    public C0796Rr(FU fu, AbstractC0801Rw rw) {
        this.A00 = fu;
        this.A01 = rw;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01561i
    public final void AB5(AdError adError) {
        this.A00.A01.ABY(this.A01, adError);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01561i
    public final void AB6() {
        this.A00.A0C.set(true);
        this.A00.A01.ABV(this.A01);
    }
}
