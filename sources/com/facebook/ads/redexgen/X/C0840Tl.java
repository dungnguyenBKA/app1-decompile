package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Tl  reason: case insensitive filesystem */
public class C0840Tl extends KO {
    public final /* synthetic */ C0842To A00;
    public final /* synthetic */ C0588Jl A01;

    public C0840Tl(C0842To to, C0588Jl jl) {
        this.A00 = to;
        this.A01 = jl;
    }

    @Override // com.facebook.ads.redexgen.X.KO
    public final void A01() {
        if (this.A00.A00.A02() != null) {
            this.A00.A00.A02().onAdError(C0588Jl.A00(this.A01));
        }
    }
}
