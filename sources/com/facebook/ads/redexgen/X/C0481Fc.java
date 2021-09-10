package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;

/* renamed from: com.facebook.ads.redexgen.X.Fc  reason: case insensitive filesystem */
public class C0481Fc extends SD {
    public final /* synthetic */ FU A00;
    public final /* synthetic */ AbstractC0801Rw A01;
    public final /* synthetic */ S5 A02;
    public final /* synthetic */ boolean A03;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0481Fc(FU fu, boolean z, boolean z2, S5 s5, AbstractC0801Rw rw) {
        super(z);
        this.A00 = fu;
        this.A03 = z2;
        this.A02 = s5;
        this.A01 = rw;
    }

    @Override // com.facebook.ads.redexgen.X.SD
    public final void A00() {
        this.A00.A01.ABY(this.A01, AdError.CACHE_ERROR);
    }

    @Override // com.facebook.ads.redexgen.X.SD
    public final void A01(boolean z) {
        if (!J4.A17(this.A00.A04) || !this.A03) {
            this.A00.A0C.set(true);
            this.A00.A01.ABV(this.A01);
            return;
        }
        FU fu = this.A00;
        fu.A07 = OT.A01(fu.A04, this.A02, 0, new C0795Rq(this));
    }
}
