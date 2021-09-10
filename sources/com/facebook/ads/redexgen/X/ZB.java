package com.facebook.ads.redexgen.X;

public final class ZB implements AbstractC0422Cj {
    public final int A00 = this.A02.A0I();
    public final int A01 = this.A02.A0I();
    public final IM A02;

    public ZB(ZA za) {
        this.A02 = za.A00;
        this.A02.A0Z(12);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0422Cj
    public final int A75() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0422Cj
    public final boolean A82() {
        return this.A00 != 0;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0422Cj
    public final int ACq() {
        int i = this.A00;
        return i == 0 ? this.A02.A0I() : i;
    }
}
