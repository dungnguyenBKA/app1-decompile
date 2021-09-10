package com.facebook.ads.redexgen.X;

import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdListener;

public final class BH implements AbstractC1144cE {
    public NativeAdBase A00;
    public NativeAdListener A01;

    public BH(NativeAdListener nativeAdListener, NativeAdBase nativeAdBase) {
        this.A01 = nativeAdListener;
        this.A00 = nativeAdBase;
    }

    @Override // com.facebook.ads.redexgen.X.JO
    public final void A9I() {
        KS.A00(new C1148cI(this));
    }

    @Override // com.facebook.ads.redexgen.X.JO
    public final void A9L() {
        KS.A00(new C1147cH(this));
    }

    @Override // com.facebook.ads.redexgen.X.JO
    public final void AA7(C0588Jl jl) {
        KS.A00(new C1145cF(this, jl));
    }

    @Override // com.facebook.ads.redexgen.X.JO
    public final void AAj() {
        KS.A00(new C1149cJ(this));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1144cE
    public final void AAm() {
        KS.A00(new C1146cG(this));
    }
}
