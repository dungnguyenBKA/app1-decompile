package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Wj  reason: case insensitive filesystem */
public class C0915Wj implements AbstractC02806e {
    public final /* synthetic */ C0922Wq A00;

    public C0915Wj(C0922Wq wq) {
        this.A00 = wq;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (this.A00.A00 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        C0922Wq wq = this.A00;
        return wq.A05(wq.A00.getPhoneType());
    }
}
