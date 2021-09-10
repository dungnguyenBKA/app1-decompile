package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.R$styleable;

public class FlowLayout extends ViewGroup {
    private int b;
    private int c;
    private boolean d;

    public FlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public boolean a() {
        return this.d;
    }

    /* access modifiers changed from: protected */
    public void b(int i) {
        this.c = i;
    }

    /* access modifiers changed from: protected */
    public void c(int i) {
        this.b = i;
    }

    public void d(boolean z) {
        this.d = z;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (getChildCount() != 0) {
            int i7 = c3.g;
            boolean z2 = true;
            if (getLayoutDirection() != 1) {
                z2 = false;
            }
            int paddingRight = z2 ? getPaddingRight() : getPaddingLeft();
            int paddingLeft = z2 ? getPaddingLeft() : getPaddingRight();
            int paddingTop = getPaddingTop();
            int i8 = (i3 - i) - paddingLeft;
            int i9 = paddingRight;
            int i10 = paddingTop;
            for (int i11 = 0; i11 < getChildCount(); i11++) {
                View childAt = getChildAt(i11);
                if (childAt.getVisibility() != 8) {
                    ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        i5 = marginLayoutParams.getMarginStart();
                        i6 = marginLayoutParams.getMarginEnd();
                    } else {
                        i6 = 0;
                        i5 = 0;
                    }
                    int measuredWidth = childAt.getMeasuredWidth() + i9 + i5;
                    if (!this.d && measuredWidth > i8) {
                        i10 = this.b + paddingTop;
                        i9 = paddingRight;
                    }
                    int i12 = i9 + i5;
                    int measuredWidth2 = childAt.getMeasuredWidth() + i12;
                    int measuredHeight = childAt.getMeasuredHeight() + i10;
                    if (z2) {
                        childAt.layout(i8 - measuredWidth2, i10, (i8 - i9) - i5, measuredHeight);
                    } else {
                        childAt.layout(i12, i10, measuredWidth2, measuredHeight);
                    }
                    i9 += childAt.getMeasuredWidth() + i5 + i6 + this.c;
                    paddingTop = measuredHeight;
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i6 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Integer.MAX_VALUE;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = i6 - getPaddingRight();
        int i7 = paddingTop;
        int i8 = 0;
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i, i2);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i4 = marginLayoutParams.leftMargin + 0;
                    i5 = marginLayoutParams.rightMargin + 0;
                } else {
                    i5 = 0;
                    i4 = 0;
                }
                if (childAt.getMeasuredWidth() + paddingLeft + i4 > paddingRight && !a()) {
                    paddingLeft = getPaddingLeft();
                    i7 = paddingTop + this.b;
                }
                int measuredWidth = childAt.getMeasuredWidth() + paddingLeft + i4;
                int measuredHeight = childAt.getMeasuredHeight() + i7;
                if (measuredWidth > i8) {
                    i8 = measuredWidth;
                }
                int measuredWidth2 = childAt.getMeasuredWidth() + i4 + i5 + this.c + paddingLeft;
                if (i9 == getChildCount() - 1) {
                    i8 += i5;
                }
                paddingLeft = measuredWidth2;
                paddingTop = measuredHeight;
            }
        }
        int paddingRight2 = getPaddingRight() + i8;
        int paddingBottom = getPaddingBottom() + paddingTop;
        if (mode != Integer.MIN_VALUE) {
            i3 = 1073741824;
            if (mode != 1073741824) {
                size = paddingRight2;
            }
        } else {
            i3 = 1073741824;
            size = Math.min(paddingRight2, size);
        }
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(paddingBottom, size2);
        } else if (mode2 != i3) {
            size2 = paddingBottom;
        }
        setMeasuredDimension(size, size2);
    }

    public FlowLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = false;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.o, 0, 0);
        this.b = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.c = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
    }
}
