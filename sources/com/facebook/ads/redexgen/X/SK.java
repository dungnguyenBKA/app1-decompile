package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;

public class SK extends AbstractRunnableC0603Kb {
    public final /* synthetic */ C0792Rn A00;
    public final /* synthetic */ C01611n A01;
    public final /* synthetic */ F5 A02;

    public SK(F5 f5, C01611n r2, C0792Rn rn) {
        this.A02 = f5;
        this.A01 = r2;
        this.A00 = rn;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        this.A02.A0S(this.A01);
        this.A02.A0P(this.A00);
        if (J4.A0m(this.A02.A0C)) {
            this.A02.A01 = null;
            C0588Jl jl = new C0588Jl(AdErrorType.INTERSTITIAL_AD_TIMEOUT, "");
            this.A02.A0C.A0A().A4Z(jl.A04().getErrorCode(), jl.A05());
            this.A02.A07.A0F(jl);
            return;
        }
        this.A02.A0O();
    }
}
