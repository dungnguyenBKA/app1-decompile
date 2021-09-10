package com.facebook.ads.redexgen.X;

public final class FB extends SJ {
    public ES A00;

    public FB(ES es, C01601m r2) {
        super(es, r2);
        this.A00 = es;
    }

    @Override // com.facebook.ads.redexgen.X.SJ
    public final void A0N() {
        if (super.A00 != null) {
            this.A00.A0A().A3p();
            this.A07.A0D(super.A00);
            return;
        }
        this.A00.A0A().A3q();
    }

    @Override // com.facebook.ads.redexgen.X.SJ
    public final void A0Q(AbstractC01350n r11, C03408w r12, C03388u r13, C01611n r14) {
        this.A00.A0A().A3j();
        C0791Rm rm = (C0791Rm) r11;
        SE se = new SE(this, r14, rm);
        A0G().postDelayed(se, (long) r12.A05().A05());
        rm.A0D(this.A00, this.A09, this.A08.A06, new SF(this, se), r14);
    }

    @Override // com.facebook.ads.redexgen.X.SJ
    public final void A0T(String str) {
        boolean z;
        RY A0F = this.A00.A0A();
        if (str != null) {
            z = true;
        } else {
            z = false;
        }
        A0F.A3o(z);
        super.A0T(str);
    }
}
