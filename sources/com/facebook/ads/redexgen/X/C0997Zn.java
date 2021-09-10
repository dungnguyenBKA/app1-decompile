package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Zn  reason: case insensitive filesystem */
public class C0997Zn implements DU {
    public final IL A00 = new IL(new byte[4]);
    public final /* synthetic */ C0999Zp A01;

    public C0997Zn(C0999Zp zp) {
        this.A01 = zp;
    }

    @Override // com.facebook.ads.redexgen.X.DU
    public final void A49(IM im) {
        if (im.A0F() == 0) {
            im.A0a(7);
            int A05 = im.A05() / 4;
            for (int i = 0; i < A05; i++) {
                im.A0b(this.A00, 4);
                int A052 = this.A00.A05(16);
                this.A00.A09(3);
                if (A052 == 0) {
                    this.A00.A09(13);
                } else {
                    int A053 = this.A00.A05(13);
                    this.A01.A06.put(A053, new C0994Zk(new C0998Zo(this.A01, A053)));
                    C0999Zp.A01(this.A01);
                }
            }
            if (this.A01.A05 != 2) {
                this.A01.A06.remove(0);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.DU
    public final void A7s(IY iy, CI ci, C0433Da da) {
    }
}
