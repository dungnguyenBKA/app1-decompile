package com.google.android.material.tabs;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.i0;
import com.google.android.material.R$styleable;

public class TabItem extends View {
    public final CharSequence b;
    public final Drawable c;
    public final int d;

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        i0 t = i0.t(context, attributeSet, R$styleable.G);
        this.b = t.p(2);
        this.c = t.g(0);
        this.d = t.n(1, 0);
        t.v();
    }
}
