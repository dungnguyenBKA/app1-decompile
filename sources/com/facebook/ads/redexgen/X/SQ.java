package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;

public class SQ extends AbstractRunnableC0603Kb {
    public final /* synthetic */ FU A00;
    public final /* synthetic */ C01611n A01;
    public final /* synthetic */ F2 A02;

    public SQ(F2 f2, C01611n r2, FU fu) {
        this.A02 = f2;
        this.A01 = r2;
        this.A00 = fu;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        this.A02.A0S(this.A01);
        this.A02.A0P(this.A00);
        this.A02.A01 = null;
        AdErrorType adErrorType = AdErrorType.RV_AD_TIMEOUT;
        this.A02.A0C.A0A().A4Z(adErrorType.getErrorCode(), adErrorType.getDefaultErrorMessage());
        this.A02.A07.A0F(new C0588Jl(adErrorType, ""));
    }
}
