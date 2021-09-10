package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.cn  reason: case insensitive filesystem */
public class C1178cn implements NM {
    public final /* synthetic */ M9 A00;
    public final /* synthetic */ C1180cp A01;

    public C1178cn(C1180cp cpVar, M9 m9) {
        this.A01 = cpVar;
        this.A00 = m9;
    }

    @Override // com.facebook.ads.redexgen.X.NM
    public final void AAz(String str) {
        this.A01.A0A.setProgress(100);
        this.A01.A05 = false;
    }

    @Override // com.facebook.ads.redexgen.X.NM
    public final void AB1(String str) {
        this.A01.A05 = true;
        this.A01.A09.setUrl(str);
    }

    @Override // com.facebook.ads.redexgen.X.NM
    public final void ABI(int i) {
        if (this.A01.A05) {
            this.A01.A0A.setProgress(i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.NM
    public final void ABN(String str) {
        this.A01.A09.setTitle(str);
    }

    @Override // com.facebook.ads.redexgen.X.NM
    public final void ABP() {
        this.A00.A9e(14);
    }
}
