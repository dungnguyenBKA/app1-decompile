package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;

/* renamed from: com.facebook.ads.redexgen.X.On  reason: case insensitive filesystem */
public final class C0714On {
    public final int[] A00(View view, int i, int i2) {
        AnonymousClass4L r3 = (AnonymousClass4L) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, view.getPaddingLeft() + view.getPaddingRight(), r3.width), ViewGroup.getChildMeasureSpec(i2, view.getPaddingTop() + view.getPaddingBottom(), r3.height));
        return new int[]{view.getMeasuredWidth() + r3.leftMargin + r3.rightMargin, view.getMeasuredHeight() + r3.bottomMargin + r3.topMargin};
    }
}
