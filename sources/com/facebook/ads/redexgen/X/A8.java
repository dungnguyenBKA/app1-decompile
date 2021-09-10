package com.facebook.ads.redexgen.X;

public final class A8 {
    public int A00;
    public int A01;
    public AK A02;
    public boolean A03;

    public A8() {
    }

    public /* synthetic */ A8(A5 a5) {
        this();
    }

    public final void A03(int i) {
        this.A01 += i;
    }

    public final void A04(int i) {
        boolean z = true;
        if (!this.A03 || this.A00 == 4) {
            this.A03 = true;
            this.A00 = i;
            return;
        }
        if (i != 4) {
            z = false;
        }
        C0551Hx.A03(z);
    }

    public final void A05(AK ak) {
        this.A02 = ak;
        this.A01 = 0;
        this.A03 = false;
    }

    public final boolean A06(AK ak) {
        return ak != this.A02 || this.A01 > 0 || this.A03;
    }
}
