package com.google.android.material.switchmaterial;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.app.b;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.i;
import com.google.android.material.internal.j;
import photoeditor.cutout.backgrounderaser.R;

public class SwitchMaterial extends SwitchCompat {
    private static final int[][] U = {new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};
    private final tx Q;
    private ColorStateList R;
    private ColorStateList S;
    private boolean T;

    public SwitchMaterial(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.rz);
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.T && f() == null) {
            if (this.R == null) {
                int H = b.H(this, R.attr.eh);
                int H2 = b.H(this, R.attr.e1);
                float dimension = getResources().getDimension(R.dimen.v4);
                if (this.Q.b()) {
                    dimension += j.c(this);
                }
                int a = this.Q.a(H, dimension);
                int[][] iArr = U;
                int[] iArr2 = new int[iArr.length];
                iArr2[0] = b.g0(H, H2, 1.0f);
                iArr2[1] = a;
                iArr2[2] = b.g0(H, H2, 0.38f);
                iArr2[3] = a;
                this.R = new ColorStateList(iArr, iArr2);
            }
            k(this.R);
        }
        if (this.T && g() == null) {
            if (this.S == null) {
                int[][] iArr3 = U;
                int[] iArr4 = new int[iArr3.length];
                int H3 = b.H(this, R.attr.eh);
                int H4 = b.H(this, R.attr.e1);
                int H5 = b.H(this, R.attr.e_);
                iArr4[0] = b.g0(H3, H4, 0.54f);
                iArr4[1] = b.g0(H3, H5, 0.32f);
                iArr4[2] = b.g0(H3, H4, 0.12f);
                iArr4[3] = b.g0(H3, H5, 0.12f);
                this.S = new ColorStateList(iArr3, iArr4);
            }
            l(this.S);
        }
    }

    public SwitchMaterial(Context context, AttributeSet attributeSet, int i) {
        super(i.e(context, attributeSet, i, R.style.qm), attributeSet, i);
        Context context2 = getContext();
        this.Q = new tx(context2);
        TypedArray f = i.f(context2, attributeSet, R$styleable.F, i, R.style.qm, new int[0]);
        this.T = f.getBoolean(0, false);
        f.recycle();
    }
}
