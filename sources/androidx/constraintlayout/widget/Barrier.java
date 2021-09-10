package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

public class Barrier extends ConstraintHelper {
    private int g;
    private int h;
    private o0 i;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    /* access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void b(AttributeSet attributeSet) {
        super.b(attributeSet);
        this.i = new o0();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.a);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == 6) {
                    k(obtainStyledAttributes.getInt(index, 0));
                } else if (index == 5) {
                    this.i.q0(obtainStyledAttributes.getBoolean(index, true));
                }
            }
        }
        this.e = this.i;
        h();
    }

    public int i() {
        return this.g;
    }

    public void j(boolean z) {
        this.i.q0(z);
    }

    public void k(int i2) {
        this.g = i2;
        this.h = i2;
        if (1 == getResources().getConfiguration().getLayoutDirection()) {
            int i3 = this.g;
            if (i3 == 5) {
                this.h = 1;
            } else if (i3 == 6) {
                this.h = 0;
            }
        } else {
            int i4 = this.g;
            if (i4 == 5) {
                this.h = 0;
            } else if (i4 == 6) {
                this.h = 1;
            }
        }
        this.i.r0(this.h);
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        super.setVisibility(8);
    }
}
