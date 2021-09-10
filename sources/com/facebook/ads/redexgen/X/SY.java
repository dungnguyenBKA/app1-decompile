package com.facebook.ads.redexgen.X;

import android.view.View;

public class SY extends AbstractC01360o {
    public final /* synthetic */ C0805Sa A00;

    public SY(C0805Sa sa) {
        this.A00 = sa;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A00() {
        this.A00.A02 = false;
        this.A00.A05.onInterstitialActivityDestroyed();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A02() {
        this.A00.A02 = false;
        if (this.A00.A01 != null) {
            this.A00.A01.A0R(new SX(this));
            this.A00.A01.A0L();
            this.A00.A01 = null;
        }
        this.A00.A05.onInterstitialDismissed(this.A00.A06.A01());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A04() {
        this.A00.A05.onInterstitialDisplayed(this.A00.A06.A01());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A05() {
        this.A00.A05.onRewardedAdServerFailed();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A06() {
        this.A00.A05.onRewardedAdServerSucceeded();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A07() {
        this.A00.A05.onRewardedAdCompleted();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A0B() {
        this.A00.A04.A0A().A2Y();
        this.A00.A05.onAdClicked(this.A00.A06.A01());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A0C() {
        this.A00.A05.onLoggingImpression(this.A00.A06.A01());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A0D(View view) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A0E(AbstractC01350n r3) {
        this.A00.A03 = true;
        this.A00.A05.onAdLoaded(this.A00.A06.A01());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01360o
    public final void A0F(C0588Jl jl) {
        this.A00.A04.A0A().A2d(LZ.A01(this.A00.A00), jl.A04().getErrorCode(), jl.A05());
        this.A00.A05.onError(this.A00.A06.A01(), C0588Jl.A00(jl));
    }
}
