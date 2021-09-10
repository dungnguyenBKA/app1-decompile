package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.ca  reason: case insensitive filesystem */
public class C1166ca implements LO {
    public final LN A00;
    public final LO A01;

    public C1166ca(LO lo, int i, int i2) {
        this.A01 = lo;
        this.A00 = new LN(i, i2);
    }

    @Override // com.facebook.ads.redexgen.X.LO
    public final void ACZ(String str) {
        this.A00.A05(str);
        if (this.A00.A03() != null && (LQ.A08(this.A00))) {
            this.A01.ACZ(this.A00.A03());
        }
    }

    @Override // com.facebook.ads.redexgen.X.LO
    public final void flush() {
        this.A00.A04();
        while (this.A00.A03() != null) {
            if (LQ.A08(this.A00)) {
                this.A01.ACZ(this.A00.A03());
            }
            this.A00.A04();
        }
    }
}
