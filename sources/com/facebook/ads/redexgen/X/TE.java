package com.facebook.ads.redexgen.X;

import android.view.View;

public class TE extends AnonymousClass44 {
    public TE(AnonymousClass4K r2) {
        super(r2, null);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A06() {
        return this.A02.A0Y();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A07() {
        return this.A02.A0Y() - this.A02.A0e();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A08() {
        return this.A02.A0e();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A09() {
        return this.A02.A0Z();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A0A() {
        return this.A02.A0h();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A0B() {
        return (this.A02.A0Y() - this.A02.A0h()) - this.A02.A0e();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A0C(View view) {
        return this.A02.A0k(view) + ((AnonymousClass4L) view.getLayoutParams()).bottomMargin;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A0D(View view) {
        AnonymousClass4L r2 = (AnonymousClass4L) view.getLayoutParams();
        return this.A02.A0m(view) + r2.topMargin + r2.bottomMargin;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A0E(View view) {
        AnonymousClass4L r2 = (AnonymousClass4L) view.getLayoutParams();
        return this.A02.A0n(view) + r2.leftMargin + r2.rightMargin;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A0F(View view) {
        return this.A02.A0p(view) - ((AnonymousClass4L) view.getLayoutParams()).topMargin;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A0G(View view) {
        this.A02.A1F(view, true, this.A01);
        return this.A01.bottom;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A0H(View view) {
        this.A02.A1F(view, true, this.A01);
        return this.A01.top;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final void A0J(int i) {
        this.A02.A11(i);
    }
}
