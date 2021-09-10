package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Ry  reason: case insensitive filesystem */
public class C0803Ry implements AbstractC0677Nb {
    public final /* synthetic */ int A00;
    public final /* synthetic */ AbstractC0804Rz A01;
    public final /* synthetic */ C1143cD A02;

    public C0803Ry(AbstractC0804Rz rz, int i, C1143cD cDVar) {
        this.A01 = rz;
        this.A00 = i;
        this.A02 = cDVar;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0677Nb
    public final void AAJ(boolean z) {
        if (this.A00 == 0) {
            this.A02.A1Y(this.A01.A04);
        }
        this.A02.A1b(z, true);
    }
}
