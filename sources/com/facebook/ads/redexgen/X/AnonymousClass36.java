package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* renamed from: com.facebook.ads.redexgen.X.36  reason: invalid class name */
public class AnonymousClass36 extends ViewGroup.LayoutParams {
    public float A00 = 0.0f;
    public int A01;
    public int A02;
    public boolean A03;
    public int A04;
    public boolean A05;

    public AnonymousClass36() {
        super(-1, -1);
    }

    public AnonymousClass36(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AnonymousClass3D.A0w);
        this.A04 = obtainStyledAttributes.getInteger(0, 48);
        obtainStyledAttributes.recycle();
    }
}
