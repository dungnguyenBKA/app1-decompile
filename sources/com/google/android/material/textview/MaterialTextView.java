package com.google.android.material.textview;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.b;
import com.google.android.material.R$styleable;
import photoeditor.cutout.backgrounderaser.R;

public class MaterialTextView extends AppCompatTextView {
    public MaterialTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    private void l(Resources.Theme theme, int i) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(i, R$styleable.y);
        int m = m(getContext(), obtainStyledAttributes, 0, 1);
        obtainStyledAttributes.recycle();
        if (m >= 0) {
            setLineHeight(m);
        }
    }

    private static int m(Context context, TypedArray typedArray, int... iArr) {
        int i = -1;
        for (int i2 = 0; i2 < iArr.length && i < 0; i2++) {
            int i3 = iArr[i2];
            TypedValue typedValue = new TypedValue();
            if (!typedArray.getValue(i3, typedValue) || typedValue.type != 2) {
                i = typedArray.getDimensionPixelSize(i3, -1);
            } else {
                TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
                int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, -1);
                obtainStyledAttributes.recycle();
                i = dimensionPixelSize;
            }
        }
        return i;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (b.w0(context, R.attr.t8, true)) {
            l(context.getTheme(), i);
        }
    }

    public MaterialTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        boolean z = true;
        if (b.w0(context, R.attr.t8, true)) {
            Resources.Theme theme = context.getTheme();
            int[] iArr = R$styleable.z;
            TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, i, 0);
            int m = m(context, obtainStyledAttributes, 1, 2);
            obtainStyledAttributes.recycle();
            if (!(m == -1 ? false : z)) {
                TypedArray obtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, iArr, i, 0);
                int resourceId = obtainStyledAttributes2.getResourceId(0, -1);
                obtainStyledAttributes2.recycle();
                if (resourceId != -1) {
                    l(theme, resourceId);
                }
            }
        }
    }
}
