package com.facebook.ads.redexgen.X;

public final class DT {
    public int A00;
    public long A01;
    public boolean A02;
    public boolean A03;
    public boolean A04;
    public final DM A05;
    public final IL A06 = new IL(new byte[64]);
    public final IY A07;

    public DT(DM dm, IY iy) {
        this.A05 = dm;
        this.A07 = iy;
    }

    private void A00() {
        this.A06.A09(8);
        this.A03 = this.A06.A0G();
        this.A02 = this.A06.A0G();
        this.A06.A09(6);
        this.A00 = this.A06.A05(8);
    }

    private void A01() {
        this.A01 = 0;
        if (this.A03) {
            this.A06.A09(4);
            this.A06.A09(1);
            this.A06.A09(1);
            long A052 = (((long) this.A06.A05(3)) << 30) | ((long) (this.A06.A05(15) << 15)) | ((long) this.A06.A05(15));
            this.A06.A09(1);
            if (!this.A04 && this.A02) {
                this.A06.A09(4);
                this.A06.A09(1);
                this.A06.A09(1);
                this.A06.A09(1);
                this.A07.A08((((long) this.A06.A05(3)) << 30) | ((long) (this.A06.A05(15) << 15)) | ((long) this.A06.A05(15)));
                this.A04 = true;
            }
            this.A01 = this.A07.A08(A052);
        }
    }

    public final void A02() {
        this.A04 = false;
        this.A05.ADV();
    }

    public final void A03(IM im) throws AJ {
        im.A0d(this.A06.A00, 0, 3);
        this.A06.A08(0);
        A00();
        im.A0d(this.A06.A00, 0, this.A00);
        this.A06.A08(0);
        A01();
        this.A05.ACJ(this.A01, true);
        this.A05.A49(im);
        this.A05.ACI();
    }
}
