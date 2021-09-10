package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import com.google.android.material.R$styleable;
import photoeditor.cutout.backgrounderaser.R;

/* access modifiers changed from: package-private */
public final class b {
    final a a;
    final a b;
    final a c;
    final a d;
    final a e;
    final a f;
    final a g;
    final Paint h;

    b(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(androidx.core.app.b.x0(context, R.attr.od, e.class.getCanonicalName()), R$styleable.s);
        this.a = a.a(context, obtainStyledAttributes.getResourceId(3, 0));
        this.g = a.a(context, obtainStyledAttributes.getResourceId(1, 0));
        this.b = a.a(context, obtainStyledAttributes.getResourceId(2, 0));
        this.c = a.a(context, obtainStyledAttributes.getResourceId(4, 0));
        ColorStateList a2 = yx.a(context, obtainStyledAttributes, 5);
        this.d = a.a(context, obtainStyledAttributes.getResourceId(7, 0));
        this.e = a.a(context, obtainStyledAttributes.getResourceId(6, 0));
        this.f = a.a(context, obtainStyledAttributes.getResourceId(8, 0));
        Paint paint = new Paint();
        this.h = paint;
        paint.setColor(a2.getDefaultColor());
        obtainStyledAttributes.recycle();
    }
}
