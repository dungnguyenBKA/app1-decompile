package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.cZ  reason: case insensitive filesystem */
public class C1165cZ implements LO {
    public int A00;
    public final LO A01;

    public C1165cZ(LO lo, int i) {
        this.A01 = lo;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.LO
    public final void ACZ(String str) {
        if (this.A00 > 0) {
            this.A01.ACZ(str);
            this.A00--;
        }
    }

    @Override // com.facebook.ads.redexgen.X.LO
    public final void flush() {
        this.A01.flush();
    }
}
