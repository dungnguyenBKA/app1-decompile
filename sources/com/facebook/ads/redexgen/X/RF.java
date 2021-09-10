package com.facebook.ads.redexgen.X;

import android.text.TextUtils;

public class RF extends QD {
    public final /* synthetic */ AnonymousClass84 A00;

    public RF(AnonymousClass84 r1) {
        this.A00 = r1;
    }

    @Override // com.facebook.ads.redexgen.X.QD
    public final void A04() {
        if (!this.A00.A0H.A08()) {
            if (!(((AbstractC1106bb) this.A00).A06)) {
                AnonymousClass84 r1 = this.A00;
                r1.setImpressionRecordingFlag(r1.A0H);
            }
            if (!TextUtils.isEmpty(this.A00.A0C)) {
                if (((AbstractC1106bb) this.A00).A06) {
                    AnonymousClass84 r12 = this.A00;
                    r12.setImpressionRecordingFlag(r12.A0H);
                }
                ((AbstractC1106bb) this.A00).A0B.A8a(this.A00.A0C, new C0678Nc().A04(this.A00.A0B).A03(this.A00.A0H).A05(((AbstractC1106bb) this.A00).A09.A0W()).A06());
                this.A00.A0G.A0A().A2a();
                AnonymousClass24.A00(this.A00.A04.A0V());
            }
        }
    }
}
