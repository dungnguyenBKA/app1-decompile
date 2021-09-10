package com.google.android.material.checkbox;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.app.b;
import androidx.core.widget.c;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.i;
import photoeditor.cutout.backgrounderaser.R;

public class MaterialCheckBox extends AppCompatCheckBox {
    private static final int[][] g = {new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};
    private ColorStateList e;
    private boolean f;

    public MaterialCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.cp);
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f && c.b(this) == null) {
            this.f = true;
            if (this.e == null) {
                int[][] iArr = g;
                int[] iArr2 = new int[iArr.length];
                int H = b.H(this, R.attr.e1);
                int H2 = b.H(this, R.attr.eh);
                int H3 = b.H(this, R.attr.e_);
                iArr2[0] = b.g0(H2, H, 1.0f);
                iArr2[1] = b.g0(H2, H3, 0.54f);
                iArr2[2] = b.g0(H2, H3, 0.38f);
                iArr2[3] = b.g0(H2, H3, 0.38f);
                this.e = new ColorStateList(iArr, iArr2);
            }
            c.c(this, this.e);
        }
    }

    public MaterialCheckBox(Context context, AttributeSet attributeSet, int i) {
        super(i.e(context, attributeSet, i, R.style.qk), attributeSet, i);
        Context context2 = getContext();
        TypedArray f2 = i.f(context2, attributeSet, R$styleable.v, i, R.style.qk, new int[0]);
        if (f2.hasValue(0)) {
            c.c(this, yx.a(context2, f2, 0));
        }
        this.f = f2.getBoolean(1, false);
        f2.recycle();
    }
}
