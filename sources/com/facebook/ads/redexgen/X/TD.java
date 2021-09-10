package com.facebook.ads.redexgen.X;

import android.view.View;

public class TD extends AnonymousClass44 {
    public TD(AnonymousClass4K r2) {
        super(r2, null);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A06() {
        return this.A02.A0i();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A07() {
        return this.A02.A0i() - this.A02.A0g();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A08() {
        return this.A02.A0g();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A09() {
        return this.A02.A0j();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A0A() {
        return this.A02.A0f();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A0B() {
        return (this.A02.A0i() - this.A02.A0f()) - this.A02.A0g();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A0C(View view) {
        return this.A02.A0o(view) + ((AnonymousClass4L) view.getLayoutParams()).rightMargin;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A0D(View view) {
        AnonymousClass4L r2 = (AnonymousClass4L) view.getLayoutParams();
        return this.A02.A0n(view) + r2.leftMargin + r2.rightMargin;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A0E(View view) {
        AnonymousClass4L r2 = (AnonymousClass4L) view.getLayoutParams();
        return this.A02.A0m(view) + r2.topMargin + r2.bottomMargin;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A0F(View view) {
        return this.A02.A0l(view) - ((AnonymousClass4L) view.getLayoutParams()).leftMargin;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A0G(View view) {
        this.A02.A1F(view, true, this.A01);
        return this.A01.right;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final int A0H(View view) {
        this.A02.A1F(view, true, this.A01);
        return this.A01.left;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass44
    public final void A0J(int i) {
        this.A02.A10(i);
    }
}
