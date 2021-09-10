package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;

public class Constraints extends ViewGroup {
    a b;

    public Constraints(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    /* access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.LayoutParams(layoutParams);
    }

    public Constraints(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        super.setVisibility(8);
    }

    public static class LayoutParams extends ConstraintLayout.LayoutParams {
        public float l0;
        public boolean m0;
        public float n0;
        public float o0;
        public float p0;
        public float q0;
        public float r0;
        public float s0;
        public float t0;
        public float u0;
        public float v0;
        public float w0;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.l0 = 1.0f;
            this.m0 = false;
            this.n0 = 0.0f;
            this.o0 = 0.0f;
            this.p0 = 0.0f;
            this.q0 = 0.0f;
            this.r0 = 1.0f;
            this.s0 = 1.0f;
            this.t0 = 0.0f;
            this.u0 = 0.0f;
            this.v0 = 0.0f;
            this.w0 = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.l0 = 1.0f;
            this.m0 = false;
            this.n0 = 0.0f;
            this.o0 = 0.0f;
            this.p0 = 0.0f;
            this.q0 = 0.0f;
            this.r0 = 1.0f;
            this.s0 = 1.0f;
            this.t0 = 0.0f;
            this.u0 = 0.0f;
            this.v0 = 0.0f;
            this.w0 = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.c);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 13) {
                    this.l0 = obtainStyledAttributes.getFloat(index, this.l0);
                } else if (index == 26) {
                    this.n0 = obtainStyledAttributes.getFloat(index, this.n0);
                    this.m0 = true;
                } else if (index == 21) {
                    this.p0 = obtainStyledAttributes.getFloat(index, this.p0);
                } else if (index == 22) {
                    this.q0 = obtainStyledAttributes.getFloat(index, this.q0);
                } else if (index == 20) {
                    this.o0 = obtainStyledAttributes.getFloat(index, this.o0);
                } else if (index == 18) {
                    this.r0 = obtainStyledAttributes.getFloat(index, this.r0);
                } else if (index == 19) {
                    this.s0 = obtainStyledAttributes.getFloat(index, this.s0);
                } else if (index == 14) {
                    this.t0 = obtainStyledAttributes.getFloat(index, this.t0);
                } else if (index == 15) {
                    this.u0 = obtainStyledAttributes.getFloat(index, this.u0);
                } else if (index == 16) {
                    this.v0 = obtainStyledAttributes.getFloat(index, this.v0);
                } else if (index == 17) {
                    this.w0 = obtainStyledAttributes.getFloat(index, this.w0);
                } else if (index == 25) {
                    this.v0 = obtainStyledAttributes.getFloat(index, 0.0f);
                }
            }
        }
    }
}
