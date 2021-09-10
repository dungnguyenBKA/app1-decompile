package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.FlowLayout;
import com.google.android.material.internal.i;
import photoeditor.cutout.backgrounderaser.R;

public class ChipGroup extends FlowLayout {
    private int e;
    private int f;
    private boolean g;
    private final b h;
    private c i;
    private int j;
    private boolean k;

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }
    }

    /* access modifiers changed from: private */
    public class b implements CompoundButton.OnCheckedChangeListener {
        b(a aVar) {
        }

        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!ChipGroup.this.k) {
                int id = compoundButton.getId();
                if (z) {
                    if (!(ChipGroup.this.j == -1 || ChipGroup.this.j == id || !ChipGroup.this.g)) {
                        ChipGroup chipGroup = ChipGroup.this;
                        chipGroup.k(chipGroup.j, false);
                    }
                    ChipGroup.i(ChipGroup.this, id);
                } else if (ChipGroup.this.j == id) {
                    ChipGroup.i(ChipGroup.this, -1);
                }
            }
        }
    }

    private class c implements ViewGroup.OnHierarchyChangeListener {
        private ViewGroup.OnHierarchyChangeListener b;

        c(a aVar) {
        }

        public void onChildViewAdded(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    view2.setId(View.generateViewId());
                }
                ((Chip) view2).A(ChipGroup.this.h);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.b;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        public void onChildViewRemoved(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                ((Chip) view2).A(null);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.b;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.d0);
    }

    static void i(ChipGroup chipGroup, int i2) {
        chipGroup.j = i2;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void k(int i2, boolean z) {
        View findViewById = findViewById(i2);
        if (findViewById instanceof Chip) {
            this.k = true;
            ((Chip) findViewById).setChecked(z);
            this.k = false;
        }
    }

    @Override // com.google.android.material.internal.FlowLayout
    public boolean a() {
        return super.a();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof Chip) {
            Chip chip = (Chip) view;
            if (chip.isChecked()) {
                int i3 = this.j;
                if (i3 != -1 && this.g) {
                    k(i3, false);
                }
                this.j = chip.getId();
            }
        }
        super.addView(view, i2, layoutParams);
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
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
    public void onFinishInflate() {
        super.onFinishInflate();
        int i2 = this.j;
        if (i2 != -1) {
            k(i2, true);
            this.j = this.j;
        }
    }

    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.i.b = onHierarchyChangeListener;
    }

    public ChipGroup(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.h = new b(null);
        this.i = new c(null);
        this.j = -1;
        this.k = false;
        TypedArray f2 = i.f(context, attributeSet, R$styleable.h, i2, R.style.qj, new int[0]);
        int dimensionPixelOffset = f2.getDimensionPixelOffset(1, 0);
        int dimensionPixelOffset2 = f2.getDimensionPixelOffset(2, dimensionPixelOffset);
        if (this.e != dimensionPixelOffset2) {
            this.e = dimensionPixelOffset2;
            b(dimensionPixelOffset2);
            requestLayout();
        }
        int dimensionPixelOffset3 = f2.getDimensionPixelOffset(3, dimensionPixelOffset);
        if (this.f != dimensionPixelOffset3) {
            this.f = dimensionPixelOffset3;
            c(dimensionPixelOffset3);
            requestLayout();
        }
        super.d(f2.getBoolean(4, false));
        boolean z = f2.getBoolean(5, false);
        if (this.g != z) {
            this.g = z;
            this.k = true;
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt instanceof Chip) {
                    ((Chip) childAt).setChecked(false);
                }
            }
            this.k = false;
            this.j = -1;
        }
        int resourceId = f2.getResourceId(0, -1);
        if (resourceId != -1) {
            this.j = resourceId;
        }
        f2.recycle();
        super.setOnHierarchyChangeListener(this.i);
    }

    /* access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }
}
