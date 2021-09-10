package com.facebook.ads.redexgen.X;

import android.text.TextUtils;

public class XU extends QD {
    public final /* synthetic */ XM A00;

    public XU(XM xm) {
        this.A00 = xm;
    }

    @Override // com.facebook.ads.redexgen.X.QD
    public final void A04() {
        if (!this.A00.A06.A08()) {
            if (!J4.A19(this.A00.A03)) {
                this.A00.A06.A06();
            }
            if (!TextUtils.isEmpty(this.A00.A01.A0T())) {
                if (J4.A19(this.A00.A03)) {
                    this.A00.A06.A06();
                }
                this.A00.A04.A8a(this.A00.A01.A0T(), new C0678Nc().A04(this.A00.A0A).A03(this.A00.A06).A05(this.A00.A01.A0W()).A06());
                this.A00.A03.A0A().A2a();
                AnonymousClass24.A00(this.A00.A01.A0V());
                this.A00.A08.A3t(this.A00.A09.A6b());
            }
        }
    }
}
