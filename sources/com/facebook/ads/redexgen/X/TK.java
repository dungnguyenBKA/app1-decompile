package com.facebook.ads.redexgen.X;

import android.view.View;

public class TK implements AbstractC02304f {
    public final /* synthetic */ AnonymousClass4K A00;

    public TK(AnonymousClass4K r1) {
        this.A00 = r1;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02304f
    public final View A5r(int i) {
        return this.A00.A0u(i);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02304f
    public final int A5t(View view) {
        return this.A00.A0k(view) + ((AnonymousClass4L) view.getLayoutParams()).bottomMargin;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02304f
    public final int A5u(View view) {
        return this.A00.A0p(view) - ((AnonymousClass4L) view.getLayoutParams()).topMargin;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02304f
    public final int A6t() {
        return this.A00.A0Y() - this.A00.A0e();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02304f
    public final int A6u() {
        return this.A00.A0h();
    }
}
