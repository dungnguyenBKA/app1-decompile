package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Ud  reason: case insensitive filesystem */
public class C0857Ud implements AbstractC02806e {
    public final /* synthetic */ C0863Uj A00;

    public C0857Ud(C0863Uj uj) {
        this.A00 = uj;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (this.A00.A01 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        C0863Uj uj = this.A00;
        return uj.A09(uj.A01.dataDir);
    }
}
