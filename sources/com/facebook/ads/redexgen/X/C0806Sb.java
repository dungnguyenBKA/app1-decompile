package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Sb  reason: case insensitive filesystem */
public class C0806Sb extends AbstractC01360o {
    public final /* synthetic */ C0808Sd A00;

    public C0806Sb(C0808Sd sd) {
        this.A00 = sd;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A05() {
        this.A00.A05.onRewardServerFailed();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A06() {
        this.A00.A05.onRewardServerSuccess();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A07() {
        this.A00.A05.onRewardedVideoCompleted();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A08() {
        this.A00.A05.onRewardedVideoActivityDestroyed();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A09() {
        this.A00.A05.onRewardedVideoClosed();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A0B() {
        this.A00.A05.onAdClicked(this.A00.A06.A01());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A0C() {
        this.A00.A05.onLoggingImpression(this.A00.A06.A01());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A0E(AbstractC01350n r3) {
        C0808Sd sd = this.A00;
        sd.A03 = sd.A02.A0I();
        AbstractC0801Rw rw = (AbstractC0801Rw) r3;
        if (this.A00.A06.A03 != null) {
            rw.A01(this.A00.A06.A03);
        }
        this.A00.A06.A00 = rw.A0D();
        this.A00.A04 = true;
        this.A00.A05.onAdLoaded(this.A00.A06.A01());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A0F(C0588Jl jl) {
        this.A00.A0A(true);
        this.A00.A06.A0B.A0A().A2d(LZ.A01(this.A00.A01), jl.A04().getErrorCode(), jl.A05());
        this.A00.A05.onError(this.A00.A06.A01(), C0588Jl.A00(jl));
    }
}
