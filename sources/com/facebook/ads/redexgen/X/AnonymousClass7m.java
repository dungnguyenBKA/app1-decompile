package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.7m  reason: invalid class name */
public class AnonymousClass7m extends K3 {
    public final /* synthetic */ C0587Jj A00;

    public AnonymousClass7m(C0587Jj jj) {
        this.A00 = jj;
    }

    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final void A04(K4 k4) {
        if (this.A00.A01 != null && !(this.A00.A03) && k4.A00().getAction() == 0) {
            this.A00.A05.removeCallbacksAndMessages(null);
            if (this.A00.A0E(EnumC0737Pk.A05)) {
                this.A00.A03();
                this.A00.A07(true, false);
            }
            if (this.A00.A02) {
                this.A00.A05.postDelayed(new C0594Js(this), (long) this.A00.A00);
            }
        }
    }
}
