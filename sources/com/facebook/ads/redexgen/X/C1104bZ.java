package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.bZ  reason: case insensitive filesystem */
public final class C1104bZ implements HH {
    public final int A00;
    public final HF A01;
    public final HH A02;
    public final HH A03;
    public final AbstractC0535Hh A04;
    public final AbstractC0537Hj A05;

    public C1104bZ(AbstractC0535Hh hh, HH hh2, HH hh3, HF hf, int i, AbstractC0537Hj hj) {
        this.A04 = hh;
        this.A03 = hh2;
        this.A02 = hh3;
        this.A01 = hf;
        this.A00 = i;
        this.A05 = hj;
    }

    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final C1103bY A4E() {
        HG hg;
        AbstractC0535Hh hh = this.A04;
        HI A4E = this.A03.A4E();
        HI A4E2 = this.A02.A4E();
        HF hf = this.A01;
        if (hf != null) {
            hg = hf.createDataSink();
        } else {
            hg = null;
        }
        return new C1103bY(hh, A4E, A4E2, hg, this.A00, this.A05);
    }
}
