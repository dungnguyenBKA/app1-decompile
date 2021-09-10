package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.7o  reason: invalid class name and case insensitive filesystem */
public class C03127o extends KQ {
    public final /* synthetic */ C0587Jj A00;

    public C03127o(C0587Jj jj) {
        this.A00 = jj;
    }

    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final void A04(KU ku) {
        if ((this.A00.A03) && (this.A00.A02)) {
            this.A00.A03 = false;
            if ((this.A00.A0E(EnumC0737Pk.A04)) || (this.A00.A04)) {
                this.A00.A04 = false;
                this.A00.A05.postDelayed(new C0599Jx(this), (long) this.A00.A00);
            } else if (this.A00.A0E(EnumC0737Pk.A03)) {
                this.A00.A03();
                this.A00.A07(true, true);
            }
        }
    }
}
