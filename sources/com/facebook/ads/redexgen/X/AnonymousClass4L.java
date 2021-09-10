package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* renamed from: com.facebook.ads.redexgen.X.4L  reason: invalid class name */
public class AnonymousClass4L extends ViewGroup.MarginLayoutParams {
    public AbstractC02274c A00;
    public boolean A01 = true;
    public boolean A02 = false;
    public final Rect A03 = new Rect();

    public AnonymousClass4L(int i, int i2) {
        super(i, i2);
    }

    public AnonymousClass4L(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AnonymousClass4L(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
    }

    public AnonymousClass4L(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
    }

    public AnonymousClass4L(AnonymousClass4L r2) {
        super((ViewGroup.LayoutParams) r2);
    }

    public final int A00() {
        return this.A00.A0J();
    }

    public final boolean A01() {
        return this.A00.A0g();
    }

    public final boolean A02() {
        return this.A00.A0d();
    }

    public final boolean A03() {
        return this.A00.A0c();
    }
}
