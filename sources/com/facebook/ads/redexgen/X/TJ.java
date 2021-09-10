package com.facebook.ads.redexgen.X;

import android.view.View;

public class TJ implements AbstractC02304f {
    public final /* synthetic */ AnonymousClass4K A00;

    public TJ(AnonymousClass4K r1) {
        this.A00 = r1;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02304f
    public final View A5r(int i) {
        return this.A00.A0u(i);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02304f
    public final int A5t(View view) {
        return this.A00.A0o(view) + ((AnonymousClass4L) view.getLayoutParams()).rightMargin;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02304f
    public final int A5u(View view) {
        return this.A00.A0l(view) - ((AnonymousClass4L) view.getLayoutParams()).leftMargin;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02304f
    public final int A6t() {
        return this.A00.A0i() - this.A00.A0g();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02304f
    public final int A6u() {
        return this.A00.A0f();
    }
}
