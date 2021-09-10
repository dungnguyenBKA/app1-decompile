package com.facebook.ads.redexgen.X;

public final class ZC implements AbstractC0422Cj {
    public int A00;
    public int A01;
    public final int A02 = (this.A04.A0I() & 255);
    public final int A03 = this.A04.A0I();
    public final IM A04;

    public ZC(ZA za) {
        this.A04 = za.A00;
        this.A04.A0Z(12);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0422Cj
    public final int A75() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0422Cj
    public final boolean A82() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0422Cj
    public final int ACq() {
        int i = this.A02;
        if (i == 8) {
            return this.A04.A0F();
        }
        if (i == 16) {
            return this.A04.A0J();
        }
        int i2 = this.A01;
        this.A01 = i2 + 1;
        if (i2 % 2 != 0) {
            return this.A00 & 15;
        }
        this.A00 = this.A04.A0F();
        return (this.A00 & 240) >> 4;
    }
}
