package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;

/* renamed from: com.facebook.ads.redexgen.X.Zx  reason: case insensitive filesystem */
public class C1007Zx extends AbstractRunnableC0603Kb {
    public final /* synthetic */ C0688Nm A00;

    public C1007Zx(C0688Nm nm) {
        this.A00 = nm;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        this.A00.clearAnimation();
        C0632Lh.A0H(AdError.NETWORK_ERROR_CODE, C0688Nm.A00(this.A00), this.A00);
        C0688Nm nm = this.A00;
        nm.postDelayed(this, (long) C0688Nm.A01(nm));
    }
}
