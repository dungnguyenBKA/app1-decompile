package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.R$styleable;
import androidx.customview.view.AbsSavedState;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class CoordinatorLayout extends ViewGroup implements u2, v2 {
    static final String v;
    static final Class<?>[] w = {Context.class, AttributeSet.class};
    static final ThreadLocal<Map<String, Constructor<Behavior>>> x = new ThreadLocal<>();
    static final Comparator<View> y;
    private static final k2<Rect> z = new m2(12);
    private final List<View> b;
    private final a<View> c;
    private final List<View> d;
    private final List<View> e;
    private Paint f;
    private final int[] g;
    private final int[] h;
    private boolean i;
    private boolean j;
    private int[] k;
    private View l;
    private View m;
    private f n;
    private boolean o;
    private l3 p;
    private boolean q;
    private Drawable r;
    ViewGroup.OnHierarchyChangeListener s;
    private y2 t;
    private final x2 u;

    public static abstract class Behavior<V extends View> {
        public Behavior() {
        }

        public boolean A(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, Rect rect) {
            return false;
        }

        /* JADX WARN: Incorrect args count in method signature: (Landroidx/coordinatorlayout/widget/CoordinatorLayout;TV;)I */
        public int b() {
            return -16777216;
        }

        /* JADX WARN: Incorrect args count in method signature: (Landroidx/coordinatorlayout/widget/CoordinatorLayout;TV;)F */
        public float c() {
            return 0.0f;
        }

        public boolean d(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        /* JADX WARN: Incorrect args count in method signature: (Landroidx/coordinatorlayout/widget/CoordinatorLayout;TV;Ll3;)Ll3; */
        public l3 e(l3 l3Var) {
            return l3Var;
        }

        public void f(e eVar) {
        }

        public boolean g(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        /* JADX WARN: Incorrect args count in method signature: (Landroidx/coordinatorlayout/widget/CoordinatorLayout;TV;Landroid/view/View;)V */
        public void h() {
        }

        public void i() {
        }

        public boolean j(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        public boolean k(CoordinatorLayout coordinatorLayout, V v, int i) {
            return false;
        }

        public boolean l(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3, int i4) {
            return false;
        }

        /* JADX WARN: Incorrect args count in method signature: (Landroidx/coordinatorlayout/widget/CoordinatorLayout;TV;Landroid/view/View;FFZ)Z */
        public boolean m() {
            return false;
        }

        public boolean n(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
            return false;
        }

        /* JADX WARN: Incorrect args count in method signature: (Landroidx/coordinatorlayout/widget/CoordinatorLayout;TV;Landroid/view/View;II[I)V */
        @Deprecated
        public void o() {
        }

        public void p(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
            if (i3 == 0) {
                o();
            }
        }

        @Deprecated
        public void q(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4) {
        }

        public void r(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            iArr[0] = iArr[0] + i3;
            iArr[1] = iArr[1] + i4;
            if (i5 == 0) {
                q(coordinatorLayout, v, view, i, i2, i3, i4);
            }
        }

        /* JADX WARN: Incorrect args count in method signature: (Landroidx/coordinatorlayout/widget/CoordinatorLayout;TV;Landroid/view/View;Landroid/view/View;I)V */
        @Deprecated
        public void s() {
        }

        public boolean t(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
            return false;
        }

        public void u(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        }

        public Parcelable v(CoordinatorLayout coordinatorLayout, V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        @Deprecated
        public boolean w(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
            return false;
        }

        public boolean x(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            if (i2 == 0) {
                return w(coordinatorLayout, v, view, view2, i);
            }
            return false;
        }

        /* JADX WARN: Incorrect args count in method signature: (Landroidx/coordinatorlayout/widget/CoordinatorLayout;TV;Landroid/view/View;)V */
        @Deprecated
        public void y() {
        }

        public void z(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
            if (i == 0) {
                y();
            }
        }

        public Behavior(Context context, AttributeSet attributeSet) {
        }
    }

    /* access modifiers changed from: package-private */
    public class a implements y2 {
        a() {
        }

        @Override // defpackage.y2
        public l3 a(View view, l3 l3Var) {
            return CoordinatorLayout.this.H(l3Var);
        }
    }

    public interface b {
        Behavior a();
    }

    @Deprecated
    @Retention(RetentionPolicy.RUNTIME)
    public @interface c {
        Class<? extends Behavior> value();
    }

    private class d implements ViewGroup.OnHierarchyChangeListener {
        d() {
        }

        public void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.s;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.A(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.s;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    class f implements ViewTreeObserver.OnPreDrawListener {
        f() {
        }

        public boolean onPreDraw() {
            CoordinatorLayout.this.A(0);
            return true;
        }
    }

    static class g implements Comparator<View> {
        g() {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // java.util.Comparator
        public int compare(View view, View view2) {
            View view3 = view;
            View view4 = view2;
            int i = c3.g;
            int i2 = Build.VERSION.SDK_INT;
            float f = 0.0f;
            float z = i2 >= 21 ? view3.getZ() : 0.0f;
            if (i2 >= 21) {
                f = view4.getZ();
            }
            if (z > f) {
                return -1;
            }
            return z < f ? 1 : 0;
        }
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        v = r0 != null ? r0.getName() : null;
        if (Build.VERSION.SDK_INT >= 21) {
            y = new g();
        } else {
            y = null;
        }
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.f1);
    }

    private boolean D(MotionEvent motionEvent, int i2) {
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.d;
        list.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            list.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i3) : i3));
        }
        Comparator<View> comparator = y;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
        int size = list.size();
        MotionEvent motionEvent2 = null;
        boolean z2 = false;
        boolean z3 = false;
        for (int i4 = 0; i4 < size; i4++) {
            View view = list.get(i4);
            e eVar = (e) view.getLayoutParams();
            Behavior behavior = eVar.a;
            if (!(z2 || z3) || actionMasked == 0) {
                if (!z2 && behavior != null) {
                    if (i2 == 0) {
                        z2 = behavior.j(this, view, motionEvent);
                    } else if (i2 == 1) {
                        z2 = behavior.A(this, view, motionEvent);
                    }
                    if (z2) {
                        this.l = view;
                    }
                }
                boolean a2 = eVar.a();
                boolean e2 = eVar.e(this, view);
                z3 = e2 && !a2;
                if (e2 && !z3) {
                    break;
                }
            } else if (behavior != null) {
                if (motionEvent2 == null) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                }
                if (i2 == 0) {
                    behavior.j(this, view, motionEvent2);
                } else if (i2 == 1) {
                    behavior.A(this, view, motionEvent2);
                }
            }
        }
        list.clear();
        return z2;
    }

    private void E(boolean z2) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            Behavior behavior = ((e) childAt.getLayoutParams()).a;
            if (behavior != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z2) {
                    behavior.j(this, childAt, obtain);
                } else {
                    behavior.A(this, childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            ((e) getChildAt(i3).getLayoutParams()).h();
        }
        this.l = null;
        this.i = false;
    }

    private void F(View view, int i2) {
        e eVar = (e) view.getLayoutParams();
        int i3 = eVar.i;
        if (i3 != i2) {
            c3.n(view, i2 - i3);
            eVar.i = i2;
        }
    }

    private void G(View view, int i2) {
        e eVar = (e) view.getLayoutParams();
        int i3 = eVar.j;
        if (i3 != i2) {
            c3.o(view, i2 - i3);
            eVar.j = i2;
        }
    }

    private void I() {
        if (Build.VERSION.SDK_INT >= 21) {
            int i2 = c3.g;
            if (getFitsSystemWindows()) {
                if (this.t == null) {
                    this.t = new a();
                }
                c3.x(this, this.t);
                setSystemUiVisibility(1280);
                return;
            }
            c3.x(this, null);
        }
    }

    private static Rect e() {
        Rect b2 = z.b();
        return b2 == null ? new Rect() : b2;
    }

    private void l(e eVar, Rect rect, int i2, int i3) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) eVar).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i2) - ((ViewGroup.MarginLayoutParams) eVar).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) eVar).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i3) - ((ViewGroup.MarginLayoutParams) eVar).bottomMargin));
        rect.set(max, max2, i2 + max, i3 + max2);
    }

    private void v(int i2, Rect rect, Rect rect2, e eVar, int i3, int i4) {
        int i5;
        int i6;
        int i7 = eVar.c;
        if (i7 == 0) {
            i7 = 17;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i7, i2);
        int i8 = eVar.d;
        if ((i8 & 7) == 0) {
            i8 |= 8388611;
        }
        if ((i8 & 112) == 0) {
            i8 |= 48;
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i8, i2);
        int i9 = absoluteGravity & 7;
        int i10 = absoluteGravity & 112;
        int i11 = absoluteGravity2 & 7;
        int i12 = absoluteGravity2 & 112;
        if (i11 == 1) {
            i5 = rect.left + (rect.width() / 2);
        } else if (i11 != 5) {
            i5 = rect.left;
        } else {
            i5 = rect.right;
        }
        if (i12 == 16) {
            i6 = rect.top + (rect.height() / 2);
        } else if (i12 != 80) {
            i6 = rect.top;
        } else {
            i6 = rect.bottom;
        }
        if (i9 == 1) {
            i5 -= i3 / 2;
        } else if (i9 != 5) {
            i5 -= i3;
        }
        if (i10 == 16) {
            i6 -= i4 / 2;
        } else if (i10 != 80) {
            i6 -= i4;
        }
        rect2.set(i5, i6, i3 + i5, i4 + i6);
    }

    private int w(int i2) {
        int[] iArr = this.k;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i2);
            return 0;
        } else if (i2 >= 0 && i2 < iArr.length) {
            return iArr[i2];
        } else {
            Log.e("CoordinatorLayout", "Keyline index " + i2 + " out of range for " + this);
            return 0;
        }
    }

    /* access modifiers changed from: package-private */
    public final void A(int i2) {
        int i3;
        Rect rect;
        int i4;
        boolean z2;
        boolean z3;
        boolean z4;
        int width;
        int i5;
        int i6;
        int i7;
        int height;
        int i8;
        int i9;
        int i10;
        Rect rect2;
        int i11;
        int i12;
        int i13;
        e eVar;
        Behavior behavior;
        int i14 = c3.g;
        int layoutDirection = getLayoutDirection();
        int size = this.b.size();
        Rect e2 = e();
        Rect e3 = e();
        Rect e4 = e();
        int i15 = 0;
        while (i15 < size) {
            View view = this.b.get(i15);
            e eVar2 = (e) view.getLayoutParams();
            if (i2 == 0 && view.getVisibility() == 8) {
                i4 = size;
                rect = e4;
                i3 = i15;
            } else {
                int i16 = 0;
                while (i16 < i15) {
                    if (eVar2.l == this.b.get(i16)) {
                        e eVar3 = (e) view.getLayoutParams();
                        if (eVar3.k != null) {
                            Rect e5 = e();
                            Rect e6 = e();
                            Rect e7 = e();
                            b.a(this, eVar3.k, e5);
                            s(view, false, e6);
                            int measuredWidth = view.getMeasuredWidth();
                            i13 = size;
                            int measuredHeight = view.getMeasuredHeight();
                            i12 = i15;
                            i11 = i16;
                            rect2 = e4;
                            eVar = eVar2;
                            v(layoutDirection, e5, e7, eVar3, measuredWidth, measuredHeight);
                            boolean z5 = (e7.left == e6.left && e7.top == e6.top) ? false : true;
                            l(eVar3, e7, measuredWidth, measuredHeight);
                            int i17 = e7.left - e6.left;
                            int i18 = e7.top - e6.top;
                            if (i17 != 0) {
                                c3.n(view, i17);
                            }
                            if (i18 != 0) {
                                c3.o(view, i18);
                            }
                            if (z5 && (behavior = eVar3.a) != null) {
                                behavior.g(this, view, eVar3.k);
                            }
                            e5.setEmpty();
                            k2<Rect> k2Var = z;
                            k2Var.a(e5);
                            e6.setEmpty();
                            k2Var.a(e6);
                            e7.setEmpty();
                            k2Var.a(e7);
                            i16 = i11 + 1;
                            eVar2 = eVar;
                            size = i13;
                            i15 = i12;
                            e4 = rect2;
                        }
                    }
                    i11 = i16;
                    i13 = size;
                    rect2 = e4;
                    i12 = i15;
                    eVar = eVar2;
                    i16 = i11 + 1;
                    eVar2 = eVar;
                    size = i13;
                    i15 = i12;
                    e4 = rect2;
                }
                i3 = i15;
                s(view, true, e3);
                if (eVar2.g != 0 && !e3.isEmpty()) {
                    int absoluteGravity = Gravity.getAbsoluteGravity(eVar2.g, layoutDirection);
                    int i19 = absoluteGravity & 112;
                    if (i19 == 48) {
                        e2.top = Math.max(e2.top, e3.bottom);
                    } else if (i19 == 80) {
                        e2.bottom = Math.max(e2.bottom, getHeight() - e3.top);
                    }
                    int i20 = absoluteGravity & 7;
                    if (i20 == 3) {
                        e2.left = Math.max(e2.left, e3.right);
                    } else if (i20 == 5) {
                        e2.right = Math.max(e2.right, getWidth() - e3.left);
                    }
                }
                if (eVar2.h != 0 && view.getVisibility() == 0) {
                    int i21 = c3.g;
                    if (view.isLaidOut() && view.getWidth() > 0 && view.getHeight() > 0) {
                        e eVar4 = (e) view.getLayoutParams();
                        Behavior behavior2 = eVar4.a;
                        Rect e8 = e();
                        Rect e9 = e();
                        e9.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                        if (behavior2 == null || !behavior2.a(this, view, e8)) {
                            e8.set(e9);
                        } else if (!e9.contains(e8)) {
                            StringBuilder q2 = ic.q("Rect should be within the child's bounds. Rect:");
                            q2.append(e8.toShortString());
                            q2.append(" | Bounds:");
                            q2.append(e9.toShortString());
                            throw new IllegalArgumentException(q2.toString());
                        }
                        e9.setEmpty();
                        k2<Rect> k2Var2 = z;
                        k2Var2.a(e9);
                        if (e8.isEmpty()) {
                            e8.setEmpty();
                            k2Var2.a(e8);
                        } else {
                            int absoluteGravity2 = Gravity.getAbsoluteGravity(eVar4.h, layoutDirection);
                            if ((absoluteGravity2 & 48) != 48 || (i9 = (e8.top - ((ViewGroup.MarginLayoutParams) eVar4).topMargin) - eVar4.j) >= (i10 = e2.top)) {
                                z3 = false;
                            } else {
                                G(view, i10 - i9);
                                z3 = true;
                            }
                            if ((absoluteGravity2 & 80) == 80 && (height = ((getHeight() - e8.bottom) - ((ViewGroup.MarginLayoutParams) eVar4).bottomMargin) + eVar4.j) < (i8 = e2.bottom)) {
                                G(view, height - i8);
                                z3 = true;
                            }
                            if (!z3) {
                                G(view, 0);
                            }
                            if ((absoluteGravity2 & 3) != 3 || (i6 = (e8.left - ((ViewGroup.MarginLayoutParams) eVar4).leftMargin) - eVar4.i) >= (i7 = e2.left)) {
                                z4 = false;
                            } else {
                                F(view, i7 - i6);
                                z4 = true;
                            }
                            if ((absoluteGravity2 & 5) == 5 && (width = ((getWidth() - e8.right) - ((ViewGroup.MarginLayoutParams) eVar4).rightMargin) + eVar4.i) < (i5 = e2.right)) {
                                F(view, width - i5);
                                z4 = true;
                            }
                            if (!z4) {
                                F(view, 0);
                            }
                            e8.setEmpty();
                            k2Var2.a(e8);
                        }
                    }
                }
                if (i2 != 2) {
                    rect = e4;
                    rect.set(((e) view.getLayoutParams()).q);
                    if (rect.equals(e3)) {
                        i4 = size;
                    } else {
                        ((e) view.getLayoutParams()).q.set(e3);
                    }
                } else {
                    rect = e4;
                }
                i4 = size;
                for (int i22 = i3 + 1; i22 < i4; i22++) {
                    View view2 = this.b.get(i22);
                    e eVar5 = (e) view2.getLayoutParams();
                    Behavior behavior3 = eVar5.a;
                    if (behavior3 != null && behavior3.d(this, view2, view)) {
                        if (i2 != 0 || !eVar5.d()) {
                            if (i2 != 2) {
                                z2 = behavior3.g(this, view2, view);
                            } else {
                                behavior3.h();
                                z2 = true;
                            }
                            if (i2 == 1) {
                                eVar5.i(z2);
                            }
                        } else {
                            eVar5.g();
                        }
                    }
                }
            }
            i15 = i3 + 1;
            size = i4;
            e4 = rect;
        }
        e2.setEmpty();
        k2<Rect> k2Var3 = z;
        k2Var3.a(e2);
        e3.setEmpty();
        k2Var3.a(e3);
        e4.setEmpty();
        k2Var3.a(e4);
    }

    public void B(View view, int i2) {
        e eVar = (e) view.getLayoutParams();
        View view2 = eVar.k;
        int i3 = 0;
        if (view2 == null && eVar.f != -1) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        } else if (view2 != null) {
            Rect e2 = e();
            Rect e3 = e();
            try {
                b.a(this, view2, e2);
                e eVar2 = (e) view.getLayoutParams();
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                v(i2, e2, e3, eVar2, measuredWidth, measuredHeight);
                l(eVar2, e3, measuredWidth, measuredHeight);
                view.layout(e3.left, e3.top, e3.right, e3.bottom);
            } finally {
                e2.setEmpty();
                k2<Rect> k2Var = z;
                k2Var.a(e2);
                e3.setEmpty();
                k2Var.a(e3);
            }
        } else {
            int i4 = eVar.e;
            if (i4 >= 0) {
                e eVar3 = (e) view.getLayoutParams();
                int i5 = eVar3.c;
                if (i5 == 0) {
                    i5 = 8388661;
                }
                int absoluteGravity = Gravity.getAbsoluteGravity(i5, i2);
                int i6 = absoluteGravity & 7;
                int i7 = absoluteGravity & 112;
                int width = getWidth();
                int height = getHeight();
                int measuredWidth2 = view.getMeasuredWidth();
                int measuredHeight2 = view.getMeasuredHeight();
                if (i2 == 1) {
                    i4 = width - i4;
                }
                int w2 = w(i4) - measuredWidth2;
                if (i6 == 1) {
                    w2 += measuredWidth2 / 2;
                } else if (i6 == 5) {
                    w2 += measuredWidth2;
                }
                if (i7 == 16) {
                    i3 = 0 + (measuredHeight2 / 2);
                } else if (i7 == 80) {
                    i3 = measuredHeight2 + 0;
                }
                int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) eVar3).leftMargin, Math.min(w2, ((width - getPaddingRight()) - measuredWidth2) - ((ViewGroup.MarginLayoutParams) eVar3).rightMargin));
                int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) eVar3).topMargin, Math.min(i3, ((height - getPaddingBottom()) - measuredHeight2) - ((ViewGroup.MarginLayoutParams) eVar3).bottomMargin));
                view.layout(max, max2, measuredWidth2 + max, measuredHeight2 + max2);
                return;
            }
            e eVar4 = (e) view.getLayoutParams();
            Rect e4 = e();
            e4.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) eVar4).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) eVar4).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) eVar4).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) eVar4).bottomMargin);
            if (this.p != null) {
                int i8 = c3.g;
                if (getFitsSystemWindows() && !view.getFitsSystemWindows()) {
                    e4.left = this.p.c() + e4.left;
                    e4.top = this.p.e() + e4.top;
                    e4.right -= this.p.d();
                    e4.bottom -= this.p.b();
                }
            }
            Rect e5 = e();
            int i9 = eVar4.c;
            if ((i9 & 7) == 0) {
                i9 |= 8388611;
            }
            if ((i9 & 112) == 0) {
                i9 |= 48;
            }
            Gravity.apply(i9, view.getMeasuredWidth(), view.getMeasuredHeight(), e4, e5, i2);
            view.layout(e5.left, e5.top, e5.right, e5.bottom);
            e4.setEmpty();
            k2<Rect> k2Var2 = z;
            k2Var2.a(e4);
            e5.setEmpty();
            k2Var2.a(e5);
        }
    }

    public void C(View view, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* access modifiers changed from: package-private */
    public final l3 H(l3 l3Var) {
        Behavior behavior;
        if (!Objects.equals(this.p, l3Var)) {
            this.p = l3Var;
            boolean z2 = true;
            boolean z3 = l3Var != null && l3Var.e() > 0;
            this.q = z3;
            if (z3 || getBackground() != null) {
                z2 = false;
            }
            setWillNotDraw(z2);
            if (!l3Var.g()) {
                int childCount = getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = getChildAt(i2);
                    int i3 = c3.g;
                    if (childAt.getFitsSystemWindows() && (behavior = ((e) childAt.getLayoutParams()).a) != null) {
                        l3Var = behavior.e(l3Var);
                        if (l3Var.g()) {
                            break;
                        }
                    }
                }
            }
            requestLayout();
        }
        return l3Var;
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof e) && super.checkLayoutParams(layoutParams);
    }

    /* access modifiers changed from: protected */
    public boolean drawChild(Canvas canvas, View view, long j2) {
        e eVar = (e) view.getLayoutParams();
        Behavior behavior = eVar.a;
        if (behavior != null) {
            float c2 = behavior.c();
            if (c2 > 0.0f) {
                if (this.f == null) {
                    this.f = new Paint();
                }
                this.f.setColor(eVar.a.b());
                Paint paint = this.f;
                int round = Math.round(c2 * 255.0f);
                if (round < 0) {
                    round = 0;
                } else if (round > 255) {
                    round = 255;
                }
                paint.setAlpha(round);
                int save = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect((float) view.getLeft(), (float) view.getTop(), (float) view.getRight(), (float) view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect((float) getPaddingLeft(), (float) getPaddingTop(), (float) (getWidth() - getPaddingRight()), (float) (getHeight() - getPaddingBottom()), this.f);
                canvas.restoreToCount(save);
            }
        }
        return super.drawChild(canvas, view, j2);
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.r;
        boolean z2 = false;
        if (drawable != null && drawable.isStateful()) {
            z2 = false | drawable.setState(drawableState);
        }
        if (z2) {
            invalidate();
        }
    }

    @Override // defpackage.v2
    public void g(View view, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        Behavior behavior;
        int i7;
        int i8;
        int childCount = getChildCount();
        boolean z2 = false;
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.f(i6) && (behavior = eVar.a) != null) {
                    int[] iArr2 = this.g;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    behavior.r(this, childAt, view, i2, i3, i4, i5, i6, iArr2);
                    int[] iArr3 = this.g;
                    if (i4 > 0) {
                        i7 = Math.max(i9, iArr3[0]);
                    } else {
                        i7 = Math.min(i9, iArr3[0]);
                    }
                    i9 = i7;
                    if (i5 > 0) {
                        i8 = Math.max(i10, this.g[1]);
                    } else {
                        i8 = Math.min(i10, this.g[1]);
                    }
                    i10 = i8;
                    z2 = true;
                }
            }
        }
        iArr[0] = iArr[0] + i9;
        iArr[1] = iArr[1] + i10;
        if (z2) {
            A(1);
        }
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new e(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    public int getNestedScrollAxes() {
        return this.u.a();
    }

    /* access modifiers changed from: protected */
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    /* access modifiers changed from: protected */
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    @Override // defpackage.u2
    public void m(View view, int i2, int i3, int i4, int i5, int i6) {
        g(view, i2, i3, i4, i5, 0, this.h);
    }

    @Override // defpackage.u2
    public boolean n(View view, View view2, int i2, int i3) {
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                Behavior behavior = eVar.a;
                if (behavior != null) {
                    boolean x2 = behavior.x(this, childAt, view, view2, i2, i3);
                    z2 |= x2;
                    eVar.j(i3, x2);
                } else {
                    eVar.j(i3, false);
                }
            }
        }
        return z2;
    }

    @Override // defpackage.u2
    public void o(View view, View view2, int i2, int i3) {
        Behavior behavior;
        this.u.b(i2, i3);
        this.m = view2;
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            e eVar = (e) getChildAt(i4).getLayoutParams();
            if (eVar.f(i3) && (behavior = eVar.a) != null && i3 == 0) {
                behavior.s();
            }
        }
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        E(false);
        if (this.o) {
            if (this.n == null) {
                this.n = new f();
            }
            getViewTreeObserver().addOnPreDrawListener(this.n);
        }
        if (this.p == null) {
            int i2 = c3.g;
            if (getFitsSystemWindows()) {
                if (Build.VERSION.SDK_INT >= 20) {
                    requestApplyInsets();
                } else {
                    requestFitSystemWindows();
                }
            }
        }
        this.j = true;
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        E(false);
        if (this.o && this.n != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.n);
        }
        View view = this.m;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.j = false;
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.q && this.r != null) {
            l3 l3Var = this.p;
            int e2 = l3Var != null ? l3Var.e() : 0;
            if (e2 > 0) {
                this.r.setBounds(0, 0, getWidth(), e2);
                this.r.draw(canvas);
            }
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            E(true);
        }
        boolean D = D(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            E(true);
        }
        return D;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        Behavior behavior;
        int i6 = c3.g;
        int layoutDirection = getLayoutDirection();
        int size = this.b.size();
        for (int i7 = 0; i7 < size; i7++) {
            View view = this.b.get(i7);
            if (view.getVisibility() != 8 && ((behavior = ((e) view.getLayoutParams()).a) == null || !behavior.k(this, view, layoutDirection))) {
                B(view, layoutDirection);
            }
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:142:0x02a8, code lost:
        if (r0.l(r30, r19, r23, r22, r24, 0) == false) goto L_0x02b6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0058, code lost:
        if (r5 != false) goto L_0x00af;
     */
    /* JADX WARNING: Removed duplicated region for block: B:141:0x028a  */
    /* JADX WARNING: Removed duplicated region for block: B:143:0x02ab  */
    /* JADX WARNING: Removed duplicated region for block: B:165:0x0106 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x00f4  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onMeasure(int r31, int r32) {
        /*
        // Method dump skipped, instructions count: 788
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onMeasure(int, int):void");
    }

    @Override // defpackage.w2
    public boolean onNestedFling(View view, float f2, float f3, boolean z2) {
        Behavior behavior;
        int childCount = getChildCount();
        boolean z3 = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.f(0) && (behavior = eVar.a) != null) {
                    z3 |= behavior.m();
                }
            }
        }
        if (z3) {
            A(1);
        }
        return z3;
    }

    @Override // defpackage.w2
    public boolean onNestedPreFling(View view, float f2, float f3) {
        Behavior behavior;
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.f(0) && (behavior = eVar.a) != null) {
                    z2 |= behavior.n(this, childAt, view, f2, f3);
                }
            }
        }
        return z2;
    }

    @Override // defpackage.w2
    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
        q(view, i2, i3, iArr, 0);
    }

    @Override // defpackage.w2
    public void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        g(view, i2, i3, i4, i5, 0, this.h);
    }

    @Override // defpackage.w2
    public void onNestedScrollAccepted(View view, View view2, int i2) {
        o(view, view2, i2, 0);
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        SparseArray<Parcelable> sparseArray = savedState.d;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            Behavior behavior = y(childAt).a;
            if (!(id == -1 || behavior == null || (parcelable2 = sparseArray.get(id)) == null)) {
                behavior.u(this, childAt, parcelable2);
            }
        }
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        Parcelable v2;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            Behavior behavior = ((e) childAt.getLayoutParams()).a;
            if (!(id == -1 || behavior == null || (v2 = behavior.v(this, childAt)) == null)) {
                sparseArray.append(id, v2);
            }
        }
        savedState.d = sparseArray;
        return savedState;
    }

    @Override // defpackage.w2
    public boolean onStartNestedScroll(View view, View view2, int i2) {
        return n(view, view2, i2, 0);
    }

    @Override // defpackage.w2
    public void onStopNestedScroll(View view) {
        p(view, 0);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0012, code lost:
        if (r3 != false) goto L_0x0016;
     */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0035  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x004a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            int r2 = r18.getActionMasked()
            android.view.View r3 = r0.l
            r4 = 1
            r5 = 0
            if (r3 != 0) goto L_0x0015
            boolean r3 = r0.D(r1, r4)
            if (r3 == 0) goto L_0x0029
            goto L_0x0016
        L_0x0015:
            r3 = 0
        L_0x0016:
            android.view.View r6 = r0.l
            android.view.ViewGroup$LayoutParams r6 = r6.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$e r6 = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) r6
            androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior r6 = r6.a
            if (r6 == 0) goto L_0x0029
            android.view.View r7 = r0.l
            boolean r6 = r6.A(r0, r7, r1)
            goto L_0x002a
        L_0x0029:
            r6 = 0
        L_0x002a:
            android.view.View r7 = r0.l
            r8 = 0
            if (r7 != 0) goto L_0x0035
            boolean r1 = super.onTouchEvent(r18)
            r6 = r6 | r1
            goto L_0x0048
        L_0x0035:
            if (r3 == 0) goto L_0x0048
            long r11 = android.os.SystemClock.uptimeMillis()
            r13 = 3
            r14 = 0
            r15 = 0
            r16 = 0
            r9 = r11
            android.view.MotionEvent r8 = android.view.MotionEvent.obtain(r9, r11, r13, r14, r15, r16)
            super.onTouchEvent(r8)
        L_0x0048:
            if (r8 == 0) goto L_0x004d
            r8.recycle()
        L_0x004d:
            if (r2 == r4) goto L_0x0052
            r1 = 3
            if (r2 != r1) goto L_0x0055
        L_0x0052:
            r0.E(r5)
        L_0x0055:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // defpackage.u2
    public void p(View view, int i2) {
        this.u.d(i2);
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            e eVar = (e) childAt.getLayoutParams();
            if (eVar.f(i2)) {
                Behavior behavior = eVar.a;
                if (behavior != null) {
                    behavior.z(this, childAt, view, i2);
                }
                eVar.j(i2, false);
                eVar.g();
            }
        }
        this.m = null;
    }

    @Override // defpackage.u2
    public void q(View view, int i2, int i3, int[] iArr, int i4) {
        Behavior behavior;
        int i5;
        int i6;
        int childCount = getChildCount();
        boolean z2 = false;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.f(i4) && (behavior = eVar.a) != null) {
                    int[] iArr2 = this.g;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    behavior.p(this, childAt, view, i2, i3, iArr2, i4);
                    int[] iArr3 = this.g;
                    if (i2 > 0) {
                        i5 = Math.max(i7, iArr3[0]);
                    } else {
                        i5 = Math.min(i7, iArr3[0]);
                    }
                    i7 = i5;
                    int[] iArr4 = this.g;
                    if (i3 > 0) {
                        i6 = Math.max(i8, iArr4[1]);
                    } else {
                        i6 = Math.min(i8, iArr4[1]);
                    }
                    i8 = i6;
                    z2 = true;
                }
            }
        }
        iArr[0] = i7;
        iArr[1] = i8;
        if (z2) {
            A(1);
        }
    }

    public void r(View view) {
        List f2 = this.c.f(view);
        if (!(f2 == null || f2.isEmpty())) {
            for (int i2 = 0; i2 < f2.size(); i2++) {
                View view2 = (View) f2.get(i2);
                Behavior behavior = ((e) view2.getLayoutParams()).a;
                if (behavior != null) {
                    behavior.g(this, view2, view);
                }
            }
        }
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        Behavior behavior = ((e) view.getLayoutParams()).a;
        if (behavior == null || !behavior.t(this, view, rect, z2)) {
            return super.requestChildRectangleOnScreen(view, rect, z2);
        }
        return true;
    }

    public void requestDisallowInterceptTouchEvent(boolean z2) {
        super.requestDisallowInterceptTouchEvent(z2);
        if (z2 && !this.i) {
            E(false);
            this.i = true;
        }
    }

    /* access modifiers changed from: package-private */
    public void s(View view, boolean z2, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z2) {
            b.a(this, view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    public void setFitsSystemWindows(boolean z2) {
        super.setFitsSystemWindows(z2);
        I();
    }

    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.s = onHierarchyChangeListener;
    }

    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z2 = i2 == 0;
        Drawable drawable = this.r;
        if (drawable != null && drawable.isVisible() != z2) {
            this.r.setVisible(z2, false);
        }
    }

    public List<View> t(View view) {
        List<View> g2 = this.c.g(view);
        this.e.clear();
        if (g2 != null) {
            this.e.addAll(g2);
        }
        return this.e;
    }

    public List<View> u(View view) {
        List f2 = this.c.f(view);
        this.e.clear();
        if (f2 != null) {
            this.e.addAll(f2);
        }
        return this.e;
    }

    /* access modifiers changed from: protected */
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.r;
    }

    public final l3 x() {
        return this.p;
    }

    /* access modifiers changed from: package-private */
    public e y(View view) {
        e eVar = (e) view.getLayoutParams();
        if (!eVar.b) {
            if (view instanceof b) {
                Behavior a2 = ((b) view).a();
                if (a2 == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                Behavior behavior = eVar.a;
                if (behavior != a2) {
                    if (behavior != null) {
                        behavior.i();
                    }
                    eVar.a = a2;
                    eVar.b = true;
                    if (a2 != null) {
                        a2.f(eVar);
                    }
                }
                eVar.b = true;
            } else {
                c cVar = null;
                for (Class<?> cls = view.getClass(); cls != null; cls = cls.getSuperclass()) {
                    cVar = (c) cls.getAnnotation(c.class);
                    if (cVar != null) {
                        break;
                    }
                }
                if (cVar != null) {
                    try {
                        Behavior behavior2 = (Behavior) cVar.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                        Behavior behavior3 = eVar.a;
                        if (behavior3 != behavior2) {
                            if (behavior3 != null) {
                                behavior3.i();
                            }
                            eVar.a = behavior2;
                            eVar.b = true;
                            if (behavior2 != null) {
                                behavior2.f(eVar);
                            }
                        }
                    } catch (Exception e2) {
                        StringBuilder q2 = ic.q("Default behavior class ");
                        q2.append(cVar.value().getName());
                        q2.append(" could not be instantiated. Did you forget a default constructor?");
                        Log.e("CoordinatorLayout", q2.toString(), e2);
                    }
                }
                eVar.b = true;
            }
        }
        return eVar;
    }

    public boolean z(View view, int i2, int i3) {
        Rect e2 = e();
        b.a(this, view, e2);
        try {
            return e2.contains(i2, i3);
        } finally {
            e2.setEmpty();
            z.a(e2);
        }
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        TypedArray typedArray;
        this.b = new ArrayList();
        this.c = new a<>();
        this.d = new ArrayList();
        this.e = new ArrayList();
        this.g = new int[2];
        this.h = new int[2];
        this.u = new x2();
        if (i2 == 0) {
            typedArray = context.obtainStyledAttributes(attributeSet, R$styleable.a, 0, R.style.s0);
        } else {
            typedArray = context.obtainStyledAttributes(attributeSet, R$styleable.a, i2, 0);
        }
        if (Build.VERSION.SDK_INT >= 29) {
            if (i2 == 0) {
                saveAttributeDataForStyleable(context, R$styleable.a, attributeSet, typedArray, 0, R.style.s0);
            } else {
                saveAttributeDataForStyleable(context, R$styleable.a, attributeSet, typedArray, i2, 0);
            }
        }
        int resourceId = typedArray.getResourceId(0, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.k = resources.getIntArray(resourceId);
            float f2 = resources.getDisplayMetrics().density;
            int length = this.k.length;
            for (int i3 = 0; i3 < length; i3++) {
                int[] iArr = this.k;
                iArr[i3] = (int) (((float) iArr[i3]) * f2);
            }
        }
        this.r = typedArray.getDrawable(1);
        typedArray.recycle();
        I();
        super.setOnHierarchyChangeListener(new d());
        int i4 = c3.g;
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    /* access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof e) {
            return new e((e) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new e((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new e(layoutParams);
    }

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        SparseArray<Parcelable> d;

        static class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.d = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                this.d.append(iArr[i], readParcelableArray[i]);
            }
        }

        @Override // androidx.customview.view.AbsSavedState
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            SparseArray<Parcelable> sparseArray = this.d;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = this.d.keyAt(i2);
                parcelableArr[i2] = this.d.valueAt(i2);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public static class e extends ViewGroup.MarginLayoutParams {
        Behavior a;
        boolean b = false;
        public int c = 0;
        public int d = 0;
        public int e = -1;
        int f = -1;
        public int g = 0;
        public int h = 0;
        int i;
        int j;
        View k;
        View l;
        private boolean m;
        private boolean n;
        private boolean o;
        private boolean p;
        final Rect q = new Rect();

        public e(int i2, int i3) {
            super(i2, i3);
        }

        /* access modifiers changed from: package-private */
        public boolean a() {
            if (this.a == null) {
                this.m = false;
            }
            return this.m;
        }

        public int b() {
            return this.f;
        }

        public Behavior c() {
            return this.a;
        }

        /* access modifiers changed from: package-private */
        public boolean d() {
            return this.p;
        }

        /* access modifiers changed from: package-private */
        public boolean e(CoordinatorLayout coordinatorLayout, View view) {
            boolean z = this.m;
            boolean z2 = true;
            if (z) {
                return true;
            }
            Behavior behavior = this.a;
            boolean z3 = false;
            if (behavior != null) {
                if (behavior.c() <= 0.0f) {
                    z2 = false;
                }
                z3 = z2;
            }
            boolean z4 = z | z3;
            this.m = z4;
            return z4;
        }

        /* access modifiers changed from: package-private */
        public boolean f(int i2) {
            if (i2 == 0) {
                return this.n;
            }
            if (i2 != 1) {
                return false;
            }
            return this.o;
        }

        /* access modifiers changed from: package-private */
        public void g() {
            this.p = false;
        }

        /* access modifiers changed from: package-private */
        public void h() {
            this.m = false;
        }

        /* access modifiers changed from: package-private */
        public void i(boolean z) {
            this.p = z;
        }

        /* access modifiers changed from: package-private */
        public void j(int i2, boolean z) {
            if (i2 == 0) {
                this.n = z;
            } else if (i2 == 1) {
                this.o = z;
            }
        }

        /* JADX DEBUG: Multi-variable search result rejected for r5v12, resolved type: java.lang.Class<?> */
        /* JADX WARN: Multi-variable type inference failed */
        e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            Behavior behavior;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.b);
            this.c = obtainStyledAttributes.getInteger(0, 0);
            this.f = obtainStyledAttributes.getResourceId(1, -1);
            this.d = obtainStyledAttributes.getInteger(2, 0);
            this.e = obtainStyledAttributes.getInteger(6, -1);
            this.g = obtainStyledAttributes.getInt(5, 0);
            this.h = obtainStyledAttributes.getInt(4, 0);
            boolean hasValue = obtainStyledAttributes.hasValue(3);
            this.b = hasValue;
            if (hasValue) {
                String string = obtainStyledAttributes.getString(3);
                String str = CoordinatorLayout.v;
                if (TextUtils.isEmpty(string)) {
                    behavior = null;
                } else {
                    if (string.startsWith(".")) {
                        string = context.getPackageName() + string;
                    } else if (string.indexOf(46) < 0) {
                        String str2 = CoordinatorLayout.v;
                        if (!TextUtils.isEmpty(str2)) {
                            string = str2 + '.' + string;
                        }
                    }
                    try {
                        ThreadLocal<Map<String, Constructor<Behavior>>> threadLocal = CoordinatorLayout.x;
                        Map<String, Constructor<Behavior>> map = threadLocal.get();
                        if (map == null) {
                            map = new HashMap<>();
                            threadLocal.set(map);
                        }
                        Constructor<Behavior> constructor = map.get(string);
                        if (constructor == null) {
                            constructor = Class.forName(string, false, context.getClassLoader()).getConstructor(CoordinatorLayout.w);
                            constructor.setAccessible(true);
                            map.put(string, constructor);
                        }
                        behavior = constructor.newInstance(context, attributeSet);
                    } catch (Exception e2) {
                        throw new RuntimeException(ic.i("Could not inflate Behavior subclass ", string), e2);
                    }
                }
                this.a = behavior;
            }
            obtainStyledAttributes.recycle();
            Behavior behavior2 = this.a;
            if (behavior2 != null) {
                behavior2.f(this);
            }
        }

        public e(e eVar) {
            super((ViewGroup.MarginLayoutParams) eVar);
        }

        public e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }
}
