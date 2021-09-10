package com.google.android.material.radiobutton;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.core.app.b;
import androidx.core.widget.c;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.i;
import photoeditor.cutout.backgrounderaser.R;

public class MaterialRadioButton extends AppCompatRadioButton {
    private static final int[][] g = {new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};
    private ColorStateList e;
    private boolean f;

    public MaterialRadioButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.pl);
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f && c.b(this) == null) {
            this.f = true;
            if (this.e == null) {
                int H = b.H(this, R.attr.e1);
                int H2 = b.H(this, R.attr.e_);
                int H3 = b.H(this, R.attr.eh);
                int[][] iArr = g;
                int[] iArr2 = new int[iArr.length];
                iArr2[0] = b.g0(H3, H, 1.0f);
                iArr2[1] = b.g0(H3, H2, 0.54f);
                iArr2[2] = b.g0(H3, H2, 0.38f);
                iArr2[3] = b.g0(H3, H2, 0.38f);
                this.e = new ColorStateList(iArr, iArr2);
            }
            c.c(this, this.e);
        }
    }

    public MaterialRadioButton(Context context, AttributeSet attributeSet, int i) {
        super(i.e(context, attributeSet, i, R.style.ql), attributeSet, i);
        TypedArray f2 = i.f(getContext(), attributeSet, R$styleable.w, i, R.style.ql, new int[0]);
        this.f = f2.getBoolean(0, false);
        f2.recycle();
    }
}
