package com.facebook.ads.redexgen.X;

public class TH implements AbstractC02033e {
    public final /* synthetic */ C0469Eq A00;

    public TH(C0469Eq eq) {
        this.A00 = eq;
    }

    private final void A00(C02043f r6) {
        int i = r6.A00;
        if (i == 1) {
            this.A00.A06.A1R(this.A00, r6.A02, r6.A01);
        } else if (i == 2) {
            this.A00.A06.A1S(this.A00, r6.A02, r6.A01);
        } else if (i == 4) {
            this.A00.A06.A1U(this.A00, r6.A02, r6.A01, r6.A03);
        } else if (i == 8) {
            this.A00.A06.A1T(this.A00, r6.A02, r6.A01, 1);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02033e
    public final AbstractC02274c A5M(int i) {
        AbstractC02274c A1H = this.A00.A1H(i, true);
        if (A1H != null && !this.A00.A01.A0L(A1H.A0H)) {
            return A1H;
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02033e
    public final void A8x(int i, int i2, Object obj) {
        this.A00.A1g(i, i2, obj);
        this.A00.A0H = true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02033e
    public final void A9E(int i, int i2) {
        this.A00.A1d(i, i2);
        this.A00.A0G = true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02033e
    public final void A9F(int i, int i2) {
        this.A00.A1e(i, i2);
        this.A00.A0G = true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02033e
    public final void A9G(int i, int i2) {
        this.A00.A1h(i, i2, true);
        C0469Eq eq = this.A00;
        eq.A0G = true;
        eq.A0s.A00 += i2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02033e
    public final void A9H(int i, int i2) {
        this.A00.A1h(i, i2, false);
        this.A00.A0G = true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02033e
    public final void A9u(C02043f r1) {
        A00(r1);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02033e
    public final void A9w(C02043f r1) {
        A00(r1);
    }
}
