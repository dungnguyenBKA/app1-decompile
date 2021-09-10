package com.facebook.ads.redexgen.X;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.4F  reason: invalid class name */
public class AnonymousClass4F {
    public int A00;
    public int A01;
    public int A02;
    public int A03;

    private final AnonymousClass4F A00(AbstractC02274c r3, int i) {
        View view = r3.A0H;
        this.A01 = view.getLeft();
        this.A03 = view.getTop();
        this.A02 = view.getRight();
        this.A00 = view.getBottom();
        return this;
    }

    public final AnonymousClass4F A01(AbstractC02274c r2) {
        return A00(r2, 0);
    }
}
