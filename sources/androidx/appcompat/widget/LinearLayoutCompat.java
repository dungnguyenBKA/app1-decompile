package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.appcompat.R$styleable;

public class LinearLayoutCompat extends ViewGroup {
    private boolean b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private float h;
    private boolean i;
    private int[] j;
    private int[] k;
    private Drawable l;
    private int m;
    private int n;
    private int o;
    private int p;

    public LinearLayoutCompat(Context context) {
        this(context, null);
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* access modifiers changed from: package-private */
    public void g(Canvas canvas, int i2) {
        this.l.setBounds(getPaddingLeft() + this.p, i2, (getWidth() - getPaddingRight()) - this.p, this.n + i2);
        this.l.draw(canvas);
    }

    public int getBaseline() {
        int i2;
        if (this.c < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i3 = this.c;
        if (childCount > i3) {
            View childAt = getChildAt(i3);
            int baseline = childAt.getBaseline();
            if (baseline != -1) {
                int i4 = this.d;
                if (this.e == 1 && (i2 = this.f & 112) != 48) {
                    if (i2 == 16) {
                        i4 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.g) / 2;
                    } else if (i2 == 80) {
                        i4 = ((getBottom() - getTop()) - getPaddingBottom()) - this.g;
                    }
                }
                return i4 + ((ViewGroup.MarginLayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin + baseline;
            } else if (this.c == 0) {
                return -1;
            } else {
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
        } else {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
    }

    /* access modifiers changed from: package-private */
    public void h(Canvas canvas, int i2) {
        this.l.setBounds(i2, getPaddingTop() + this.p, this.m + i2, (getHeight() - getPaddingBottom()) - this.p);
        this.l.draw(canvas);
    }

    /* access modifiers changed from: protected */
    /* renamed from: i */
    public LayoutParams generateDefaultLayoutParams() {
        int i2 = this.e;
        if (i2 == 0) {
            return new LayoutParams(-2, -2);
        }
        if (i2 == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    /* renamed from: j */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    /* renamed from: l */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    /* access modifiers changed from: package-private */
    public int m() {
        return 0;
    }

    public Drawable n() {
        return this.l;
    }

    public int o() {
        return this.m;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (this.l != null) {
            int i7 = 0;
            if (this.e == 1) {
                int childCount = getChildCount();
                while (i7 < childCount) {
                    View childAt = getChildAt(i7);
                    if (!(childAt == null || childAt.getVisibility() == 8 || !s(i7))) {
                        g(canvas, (childAt.getTop() - ((ViewGroup.MarginLayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin) - this.n);
                    }
                    i7++;
                }
                if (s(childCount)) {
                    View childAt2 = getChildAt(childCount - 1);
                    if (childAt2 == null) {
                        i6 = (getHeight() - getPaddingBottom()) - this.n;
                    } else {
                        i6 = childAt2.getBottom() + ((ViewGroup.MarginLayoutParams) ((LayoutParams) childAt2.getLayoutParams())).bottomMargin;
                    }
                    g(canvas, i6);
                    return;
                }
                return;
            }
            int childCount2 = getChildCount();
            boolean b2 = p0.b(this);
            while (i7 < childCount2) {
                View childAt3 = getChildAt(i7);
                if (!(childAt3 == null || childAt3.getVisibility() == 8 || !s(i7))) {
                    LayoutParams layoutParams = (LayoutParams) childAt3.getLayoutParams();
                    if (b2) {
                        i5 = childAt3.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    } else {
                        i5 = (childAt3.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.m;
                    }
                    h(canvas, i5);
                }
                i7++;
            }
            if (s(childCount2)) {
                View childAt4 = getChildAt(childCount2 - 1);
                if (childAt4 != null) {
                    LayoutParams layoutParams2 = (LayoutParams) childAt4.getLayoutParams();
                    if (b2) {
                        i4 = childAt4.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin;
                        i3 = this.m;
                    } else {
                        i2 = childAt4.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                        h(canvas, i2);
                    }
                } else if (b2) {
                    i2 = getPaddingLeft();
                    h(canvas, i2);
                } else {
                    i4 = getWidth() - getPaddingRight();
                    i3 = this.m;
                }
                i2 = i4 - i3;
                h(canvas, i2);
            }
        }
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x009f  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x016e  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x0178  */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x01a8  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x01ba  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onLayout(boolean r24, int r25, int r26, int r27, int r28) {
        /*
        // Method dump skipped, instructions count: 491
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.onLayout(boolean, int, int, int, int):void");
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:142:0x0310  */
    /* JADX WARNING: Removed duplicated region for block: B:208:0x04b9  */
    /* JADX WARNING: Removed duplicated region for block: B:209:0x04be  */
    /* JADX WARNING: Removed duplicated region for block: B:212:0x04e6  */
    /* JADX WARNING: Removed duplicated region for block: B:213:0x04eb  */
    /* JADX WARNING: Removed duplicated region for block: B:216:0x04f3  */
    /* JADX WARNING: Removed duplicated region for block: B:217:0x0504  */
    /* JADX WARNING: Removed duplicated region for block: B:219:0x051b  */
    /* JADX WARNING: Removed duplicated region for block: B:243:0x0588  */
    /* JADX WARNING: Removed duplicated region for block: B:246:0x0593  */
    /* JADX WARNING: Removed duplicated region for block: B:274:0x062e  */
    /* JADX WARNING: Removed duplicated region for block: B:308:0x06f8  */
    /* JADX WARNING: Removed duplicated region for block: B:311:0x0715  */
    /* JADX WARNING: Removed duplicated region for block: B:378:0x08cb  */
    /* JADX WARNING: Removed duplicated region for block: B:428:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onMeasure(int r39, int r40) {
        /*
        // Method dump skipped, instructions count: 2316
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.onMeasure(int, int):void");
    }

    public int p() {
        return this.f;
    }

    /* access modifiers changed from: package-private */
    public int q() {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public int r() {
        return 0;
    }

    /* access modifiers changed from: protected */
    public boolean s(int i2) {
        if (i2 == 0) {
            return (this.o & 1) != 0;
        }
        if (i2 == getChildCount()) {
            if ((this.o & 4) != 0) {
                return true;
            }
            return false;
        } else if ((this.o & 2) == 0) {
            return false;
        } else {
            for (int i3 = i2 - 1; i3 >= 0; i3--) {
                if (getChildAt(i3).getVisibility() != 8) {
                    return true;
                }
            }
            return false;
        }
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* access modifiers changed from: package-private */
    public void t(View view, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* access modifiers changed from: package-private */
    public int u() {
        return 0;
    }

    public void v(boolean z) {
        this.b = z;
    }

    public void w(int i2) {
        if (this.e != i2) {
            this.e = i2;
            requestLayout();
        }
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        boolean z = true;
        this.b = true;
        this.c = -1;
        this.d = 0;
        this.f = 8388659;
        i0 u = i0.u(context, attributeSet, R$styleable.n, i2, 0);
        int k2 = u.k(1, -1);
        if (k2 >= 0 && this.e != k2) {
            this.e = k2;
            requestLayout();
        }
        int k3 = u.k(0, -1);
        if (k3 >= 0 && this.f != k3) {
            k3 = (8388615 & k3) == 0 ? k3 | 8388611 : k3;
            this.f = (k3 & 112) == 0 ? k3 | 48 : k3;
            requestLayout();
        }
        boolean a = u.a(2, true);
        if (!a) {
            this.b = a;
        }
        this.h = u.i(4, -1.0f);
        this.c = u.k(3, -1);
        this.i = u.a(7, false);
        Drawable g2 = u.g(5);
        if (g2 != this.l) {
            this.l = g2;
            if (g2 != null) {
                this.m = g2.getIntrinsicWidth();
                this.n = g2.getIntrinsicHeight();
            } else {
                this.m = 0;
                this.n = 0;
            }
            setWillNotDraw(g2 != null ? false : z);
            requestLayout();
        }
        this.o = u.k(8, 0);
        this.p = u.f(6, 0);
        u.v();
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public float a;
        public int b;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.b = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.o);
            this.a = obtainStyledAttributes.getFloat(3, 0.0f);
            this.b = obtainStyledAttributes.getInt(0, -1);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.b = -1;
            this.a = 0.0f;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.b = -1;
        }
    }
}
