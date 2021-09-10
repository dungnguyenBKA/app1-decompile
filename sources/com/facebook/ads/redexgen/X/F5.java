package com.facebook.ads.redexgen.X;

public final class F5 extends SJ {
    public F5(XJ xj, C01601m r2) {
        super(xj, r2);
    }

    private AbstractC01450x A00(Runnable runnable) {
        return new SL(this, runnable);
    }

    @Override // com.facebook.ads.redexgen.X.SJ
    public final void A0N() {
        ((C0792Rn) this.A02).A0B();
    }

    @Override // com.facebook.ads.redexgen.X.SJ
    public final void A0Q(AbstractC01350n r13, C03408w r14, C03388u r15, C01611n r16) {
        C0792Rn rn = (C0792Rn) r13;
        SK sk = new SK(this, r16, rn);
        A0G().postDelayed(sk, (long) r14.A05().A05());
        rn.A0A(this.A0C, A00(sk), r16, this.A08.A09, this.A08.A03, this.A08.A04, this.A08.A01);
    }
}
