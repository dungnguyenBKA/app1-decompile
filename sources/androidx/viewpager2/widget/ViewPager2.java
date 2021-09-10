package androidx.viewpager2.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.x;
import androidx.viewpager2.R$styleable;
import defpackage.n3;
import defpackage.p3;
import java.util.Objects;

public final class ViewPager2 extends ViewGroup {
    private final Rect b = new Rect();
    private final Rect c = new Rect();
    private c d = new c(3);
    int e;
    boolean f = false;
    private LinearLayoutManager g;
    private int h = -1;
    private Parcelable i;
    RecyclerView j;
    private x k;
    f l;
    private c m;
    private d n;
    private e o;
    private boolean p = true;
    private int q = -1;
    d r;

    class a extends e {
    }

    /* access modifiers changed from: package-private */
    public class b extends g {
        b() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.g
        public void a(int i) {
            if (i == 0) {
                ViewPager2.this.i();
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.g
        public void c(int i) {
            ViewPager2 viewPager2 = ViewPager2.this;
            if (viewPager2.e != i) {
                viewPager2.e = i;
                ((h) viewPager2.r).c();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public class c extends g {
        c() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.g
        public void c(int i) {
            ViewPager2.this.clearFocus();
            if (ViewPager2.this.hasFocus()) {
                ViewPager2.this.j.requestFocus(2);
            }
        }
    }

    /* access modifiers changed from: private */
    public abstract class d {
        d(ViewPager2 viewPager2, a aVar) {
        }

        /* access modifiers changed from: package-private */
        public abstract void a(c cVar, RecyclerView recyclerView);
    }

    private static abstract class e extends RecyclerView.i {
    }

    /* access modifiers changed from: private */
    public class f extends LinearLayoutManager {
        f(Context context) {
            super(1, false);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.o
        public boolean P0(RecyclerView.u uVar, RecyclerView.y yVar, int i, Bundle bundle) {
            Objects.requireNonNull(ViewPager2.this.r);
            return super.P0(uVar, yVar, i, bundle);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.o
        public boolean V0(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            return false;
        }

        /* access modifiers changed from: protected */
        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public void l1(RecyclerView.y yVar, int[] iArr) {
            int i;
            int i2;
            int b = ViewPager2.this.b();
            if (b == -1) {
                super.l1(yVar, iArr);
                return;
            }
            ViewPager2 viewPager2 = ViewPager2.this;
            RecyclerView recyclerView = viewPager2.j;
            if (viewPager2.c() == 0) {
                i = recyclerView.getWidth() - recyclerView.getPaddingLeft();
                i2 = recyclerView.getPaddingRight();
            } else {
                i = recyclerView.getHeight() - recyclerView.getPaddingTop();
                i2 = recyclerView.getPaddingBottom();
            }
            int i3 = (i - i2) * b;
            iArr[0] = i3;
            iArr[1] = i3;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.o
        public void x0(RecyclerView.u uVar, RecyclerView.y yVar, n3 n3Var) {
            super.x0(uVar, yVar, n3Var);
            Objects.requireNonNull(ViewPager2.this.r);
        }
    }

    public static abstract class g {
        public void a(int i) {
        }

        public void b(int i, float f, int i2) {
        }

        public void c(int i) {
        }
    }

    /* access modifiers changed from: package-private */
    public class h extends d {
        private final p3 a = new a();
        private final p3 b = new b();

        class a implements p3 {
            a() {
            }

            @Override // defpackage.p3
            public boolean a(View view, p3.a aVar) {
                h.this.b(((ViewPager2) view).e + 1);
                return true;
            }
        }

        class b implements p3 {
            b() {
            }

            @Override // defpackage.p3
            public boolean a(View view, p3.a aVar) {
                h.this.b(((ViewPager2) view).e - 1);
                return true;
            }
        }

        h() {
            super(ViewPager2.this, null);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.d
        public void a(c cVar, RecyclerView recyclerView) {
            int i = c3.g;
            recyclerView.setImportantForAccessibility(2);
            if (ViewPager2.this.getImportantForAccessibility() == 0) {
                ViewPager2.this.setImportantForAccessibility(1);
            }
        }

        /* access modifiers changed from: package-private */
        public void b(int i) {
            if (ViewPager2.this.g()) {
                ViewPager2.this.h(i, true);
            }
        }

        /* access modifiers changed from: package-private */
        public void c() {
            int b2;
            ViewPager2 viewPager2 = ViewPager2.this;
            int i = 16908360;
            c3.q(viewPager2, 16908360);
            c3.q(viewPager2, 16908361);
            c3.q(viewPager2, 16908358);
            c3.q(viewPager2, 16908359);
            if (ViewPager2.this.a() != null && (b2 = ViewPager2.this.a().b()) != 0 && ViewPager2.this.g()) {
                if (ViewPager2.this.c() == 0) {
                    boolean f = ViewPager2.this.f();
                    int i2 = f ? 16908360 : 16908361;
                    if (f) {
                        i = 16908361;
                    }
                    if (ViewPager2.this.e < b2 - 1) {
                        c3.s(viewPager2, new n3.a(i2, null), null, this.a);
                    }
                    if (ViewPager2.this.e > 0) {
                        c3.s(viewPager2, new n3.a(i, null), null, this.b);
                        return;
                    }
                    return;
                }
                if (ViewPager2.this.e < b2 - 1) {
                    c3.s(viewPager2, new n3.a(16908359, null), null, this.a);
                }
                if (ViewPager2.this.e > 0) {
                    c3.s(viewPager2, new n3.a(16908358, null), null, this.b);
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public class i extends x {
        i() {
        }

        @Override // androidx.recyclerview.widget.x, androidx.recyclerview.widget.b0
        public View e(RecyclerView.o oVar) {
            if (ViewPager2.this.e()) {
                return null;
            }
            return super.e(oVar);
        }
    }

    /* access modifiers changed from: private */
    public class j extends RecyclerView {
        j(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView
        public CharSequence getAccessibilityClassName() {
            Objects.requireNonNull(ViewPager2.this.r);
            return super.getAccessibilityClassName();
        }

        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setFromIndex(ViewPager2.this.e);
            accessibilityEvent.setToIndex(ViewPager2.this.e);
            accessibilityEvent.setSource(ViewPager2.this);
            accessibilityEvent.setClassName("androidx.viewpager.widget.ViewPager");
        }

        @Override // androidx.recyclerview.widget.RecyclerView
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.g() && super.onInterceptTouchEvent(motionEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.g() && super.onTouchEvent(motionEvent);
        }
    }

    /* access modifiers changed from: private */
    public static class k implements Runnable {
        private final int b;
        private final RecyclerView c;

        k(int i, RecyclerView recyclerView) {
            this.b = i;
            this.c = recyclerView;
        }

        public void run() {
            this.c.smoothScrollToPosition(this.b);
        }
    }

    public ViewPager2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        d(context, attributeSet);
    }

    /* JADX INFO: finally extract failed */
    private void d(Context context, AttributeSet attributeSet) {
        this.r = new h();
        j jVar = new j(context);
        this.j = jVar;
        int i2 = c3.g;
        jVar.setId(View.generateViewId());
        this.j.setDescendantFocusability(131072);
        f fVar = new f(context);
        this.g = fVar;
        this.j.setLayoutManager(fVar);
        this.j.setScrollingTouchSlop(1);
        int[] iArr = R$styleable.a;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, iArr, attributeSet, obtainStyledAttributes, 0, 0);
        }
        try {
            this.g.S1(obtainStyledAttributes.getInt(0, 0));
            ((h) this.r).c();
            obtainStyledAttributes.recycle();
            this.j.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            this.j.addOnChildAttachStateChangeListener(new g(this));
            f fVar2 = new f(this);
            this.l = fVar2;
            this.n = new d(this, fVar2, this.j);
            i iVar = new i();
            this.k = iVar;
            iVar.a(this.j);
            this.j.addOnScrollListener(this.l);
            c cVar = new c(3);
            this.m = cVar;
            this.l.k(cVar);
            b bVar = new b();
            c cVar2 = new c();
            this.m.d(bVar);
            this.m.d(cVar2);
            this.r.a(this.m, this.j);
            this.m.d(this.d);
            e eVar = new e(this.g);
            this.o = eVar;
            this.m.d(eVar);
            RecyclerView recyclerView = this.j;
            attachViewToParent(recyclerView, 0, recyclerView.getLayoutParams());
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public RecyclerView.g a() {
        return this.j.getAdapter();
    }

    public int b() {
        return this.q;
    }

    public int c() {
        return this.g.I1();
    }

    public boolean canScrollHorizontally(int i2) {
        return this.j.canScrollHorizontally(i2);
    }

    public boolean canScrollVertically(int i2) {
        return this.j.canScrollVertically(i2);
    }

    /* access modifiers changed from: protected */
    @Override // android.view.View, android.view.ViewGroup
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        RecyclerView.g a2;
        Parcelable parcelable = sparseArray.get(getId());
        if (parcelable instanceof SavedState) {
            int i2 = ((SavedState) parcelable).b;
            sparseArray.put(this.j.getId(), sparseArray.get(i2));
            sparseArray.remove(i2);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        if (this.h != -1 && (a2 = a()) != null) {
            Parcelable parcelable2 = this.i;
            if (parcelable2 != null) {
                if (a2 instanceof androidx.viewpager2.adapter.a) {
                    ((androidx.viewpager2.adapter.a) a2).b(parcelable2);
                }
                this.i = null;
            }
            int max = Math.max(0, Math.min(this.h, a2.b() - 1));
            this.e = max;
            this.h = -1;
            this.j.scrollToPosition(max);
            ((h) this.r).c();
        }
    }

    public boolean e() {
        return this.n.a();
    }

    /* access modifiers changed from: package-private */
    public boolean f() {
        return this.g.P() == 1;
    }

    public boolean g() {
        return this.p;
    }

    public CharSequence getAccessibilityClassName() {
        Objects.requireNonNull(this.r);
        Objects.requireNonNull(this.r);
        return "androidx.viewpager.widget.ViewPager";
    }

    /* access modifiers changed from: package-private */
    public void h(int i2, boolean z) {
        RecyclerView.g a2 = a();
        if (a2 == null) {
            if (this.h != -1) {
                this.h = Math.max(i2, 0);
            }
        } else if (a2.b() > 0) {
            int min = Math.min(Math.max(i2, 0), a2.b() - 1);
            if (min != this.e || !this.l.h()) {
                int i3 = this.e;
                if (min != i3 || !z) {
                    double d2 = (double) i3;
                    this.e = min;
                    ((h) this.r).c();
                    if (!this.l.h()) {
                        d2 = this.l.e();
                    }
                    this.l.i(min, z);
                    if (!z) {
                        this.j.scrollToPosition(min);
                        return;
                    }
                    double d3 = (double) min;
                    Double.isNaN(d3);
                    Double.isNaN(d3);
                    if (Math.abs(d3 - d2) > 3.0d) {
                        this.j.scrollToPosition(d3 > d2 ? min - 3 : min + 3);
                        RecyclerView recyclerView = this.j;
                        recyclerView.post(new k(min, recyclerView));
                        return;
                    }
                    this.j.smoothScrollToPosition(min);
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void i() {
        x xVar = this.k;
        if (xVar != null) {
            View e2 = xVar.e(this.g);
            if (e2 != null) {
                int X = this.g.X(e2);
                if (X != this.e && this.l.f() == 0) {
                    this.m.c(X);
                }
                this.f = false;
                return;
            }
            return;
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x005c  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0068  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onInitializeAccessibilityNodeInfo(android.view.accessibility.AccessibilityNodeInfo r7) {
        /*
        // Method dump skipped, instructions count: 113
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.ViewPager2.onInitializeAccessibilityNodeInfo(android.view.accessibility.AccessibilityNodeInfo):void");
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int measuredWidth = this.j.getMeasuredWidth();
        int measuredHeight = this.j.getMeasuredHeight();
        this.b.left = getPaddingLeft();
        this.b.right = (i4 - i2) - getPaddingRight();
        this.b.top = getPaddingTop();
        this.b.bottom = (i5 - i3) - getPaddingBottom();
        Gravity.apply(8388659, measuredWidth, measuredHeight, this.b, this.c);
        RecyclerView recyclerView = this.j;
        Rect rect = this.c;
        recyclerView.layout(rect.left, rect.top, rect.right, rect.bottom);
        if (this.f) {
            i();
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        measureChild(this.j, i2, i3);
        int measuredWidth = this.j.getMeasuredWidth();
        int measuredHeight = this.j.getMeasuredHeight();
        int measuredState = this.j.getMeasuredState();
        int paddingRight = getPaddingRight() + getPaddingLeft() + measuredWidth;
        int paddingTop = getPaddingTop();
        setMeasuredDimension(ViewGroup.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i2, measuredState), ViewGroup.resolveSizeAndState(Math.max(getPaddingBottom() + paddingTop + measuredHeight, getSuggestedMinimumHeight()), i3, measuredState << 16));
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.h = savedState.c;
        this.i = savedState.d;
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.b = this.j.getId();
        int i2 = this.h;
        if (i2 == -1) {
            i2 = this.e;
        }
        savedState.c = i2;
        Parcelable parcelable = this.i;
        if (parcelable != null) {
            savedState.d = parcelable;
        } else {
            RecyclerView.g adapter = this.j.getAdapter();
            if (adapter instanceof androidx.viewpager2.adapter.a) {
                savedState.d = ((androidx.viewpager2.adapter.a) adapter).a();
            }
        }
        return savedState;
    }

    public void onViewAdded(View view) {
        throw new IllegalStateException(ViewPager2.class.getSimpleName() + " does not support direct child views");
    }

    public boolean performAccessibilityAction(int i2, Bundle bundle) {
        int i3;
        Objects.requireNonNull((h) this.r);
        boolean z = false;
        if (!(i2 == 8192 || i2 == 4096)) {
            return super.performAccessibilityAction(i2, bundle);
        }
        h hVar = (h) this.r;
        Objects.requireNonNull(hVar);
        if (i2 == 8192 || i2 == 4096) {
            z = true;
        }
        if (z) {
            if (i2 == 8192) {
                i3 = ViewPager2.this.e - 1;
            } else {
                i3 = ViewPager2.this.e + 1;
            }
            hVar.b(i3);
            return true;
        }
        throw new IllegalStateException();
    }

    public void setLayoutDirection(int i2) {
        super.setLayoutDirection(i2);
        ((h) this.r).c();
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        int b;
        int c;
        Parcelable d;

        static class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return Build.VERSION.SDK_INT >= 24 ? new SavedState(parcel, null) : new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new SavedState[i];
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return Build.VERSION.SDK_INT >= 24 ? new SavedState(parcel, classLoader) : new SavedState(parcel);
            }
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.b = parcel.readInt();
            this.c = parcel.readInt();
            this.d = parcel.readParcelable(classLoader);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.b);
            parcel.writeInt(this.c);
            parcel.writeParcelable(this.d, i);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.b = parcel.readInt();
            this.c = parcel.readInt();
            this.d = parcel.readParcelable(null);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public ViewPager2(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        d(context, attributeSet);
    }
}
