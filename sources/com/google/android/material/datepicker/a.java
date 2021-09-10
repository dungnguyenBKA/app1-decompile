package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.widget.TextView;
import androidx.core.app.b;
import com.google.android.material.R$styleable;

final class a {
    private final Rect a;
    private final ColorStateList b;
    private final ColorStateList c;
    private final ColorStateList d;
    private final int e;
    private final qy f;

    private a(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i, qy qyVar, Rect rect) {
        b.j(rect.left);
        b.j(rect.top);
        b.j(rect.right);
        b.j(rect.bottom);
        this.a = rect;
        this.b = colorStateList2;
        this.c = colorStateList;
        this.d = colorStateList3;
        this.e = i;
        this.f = qyVar;
    }

    static a a(Context context, int i) {
        if (i != 0) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, R$styleable.t);
            Rect rect = new Rect(obtainStyledAttributes.getDimensionPixelOffset(0, 0), obtainStyledAttributes.getDimensionPixelOffset(2, 0), obtainStyledAttributes.getDimensionPixelOffset(1, 0), obtainStyledAttributes.getDimensionPixelOffset(3, 0));
            ColorStateList a2 = yx.a(context, obtainStyledAttributes, 4);
            ColorStateList a3 = yx.a(context, obtainStyledAttributes, 9);
            ColorStateList a4 = yx.a(context, obtainStyledAttributes, 7);
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(8, 0);
            qy m = qy.a(context, obtainStyledAttributes.getResourceId(5, 0), obtainStyledAttributes.getResourceId(6, 0)).m();
            obtainStyledAttributes.recycle();
            return new a(a2, a3, a4, dimensionPixelSize, m, rect);
        }
        throw new IllegalArgumentException("Cannot create a CalendarItemStyle with a styleResId of 0");
    }

    /* access modifiers changed from: package-private */
    public int b() {
        return this.a.bottom;
    }

    /* access modifiers changed from: package-private */
    public int c() {
        return this.a.top;
    }

    /* access modifiers changed from: package-private */
    public void d(TextView textView) {
        my myVar = new my();
        my myVar2 = new my();
        myVar.e(this.f);
        myVar2.e(this.f);
        myVar.F(this.c);
        myVar.O((float) this.e, this.d);
        textView.setTextColor(this.b);
        Drawable rippleDrawable = Build.VERSION.SDK_INT >= 21 ? new RippleDrawable(this.b.withAlpha(30), myVar, myVar2) : myVar;
        Rect rect = this.a;
        InsetDrawable insetDrawable = new InsetDrawable(rippleDrawable, rect.left, rect.top, rect.right, rect.bottom);
        int i = c3.g;
        textView.setBackground(insetDrawable);
    }
}
