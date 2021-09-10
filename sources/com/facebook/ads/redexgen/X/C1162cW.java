package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.cW  reason: case insensitive filesystem */
public class C1162cW implements LO {
    public int A00;
    public final LO A01;
    public final LO A02;

    public C1162cW(LO lo, int i, LO lo2) {
        this.A01 = lo;
        this.A00 = i;
        this.A02 = lo2;
    }

    @Override // com.facebook.ads.redexgen.X.LO
    public final void ACZ(String str) {
        if (this.A00 > 0) {
            this.A01.ACZ(str);
            this.A01.flush();
            this.A00--;
            return;
        }
        this.A02.ACZ(str);
    }

    @Override // com.facebook.ads.redexgen.X.LO
    public final void flush() {
        this.A02.flush();
    }
}
