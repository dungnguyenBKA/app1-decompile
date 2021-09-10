package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.widget.OverScroller;
import androidx.appcompat.app.t;
import androidx.appcompat.view.menu.m;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class ActionBarOverlayLayout extends ViewGroup implements m, w2, u2, v2 {
    static final int[] C = {R.attr.d, 16842841};
    private final Runnable A = new c();
    private final x2 B;
    private int b;
    private int c = 0;
    private ContentFrameLayout d;
    ActionBarContainer e;
    private n f;
    private Drawable g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    boolean l;
    private int m;
    private int n;
    private final Rect o = new Rect();
    private final Rect p = new Rect();
    private final Rect q = new Rect();
    private final Rect r = new Rect();
    private final Rect s = new Rect();
    private final Rect t = new Rect();
    private final Rect u = new Rect();
    private d v;
    private OverScroller w;
    ViewPropertyAnimator x;
    final AnimatorListenerAdapter y = new a();
    private final Runnable z = new b();

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    class a extends AnimatorListenerAdapter {
        a() {
        }

        public void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.x = null;
            actionBarOverlayLayout.l = false;
        }

        public void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.x = null;
            actionBarOverlayLayout.l = false;
        }
    }

    class b implements Runnable {
        b() {
        }

        public void run() {
            ActionBarOverlayLayout.this.s();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.x = actionBarOverlayLayout.e.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.y);
        }
    }

    class c implements Runnable {
        c() {
        }

        public void run() {
            ActionBarOverlayLayout.this.s();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.x = actionBarOverlayLayout.e.animate().translationY((float) (-ActionBarOverlayLayout.this.e.getHeight())).setListener(ActionBarOverlayLayout.this.y);
        }
    }

    public interface d {
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        t(context);
        this.B = new x2();
    }

    private boolean r(View view, Rect rect, boolean z2, boolean z3, boolean z4, boolean z5) {
        boolean z6;
        int i2;
        int i3;
        int i4;
        int i5;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!z2 || ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin == (i5 = rect.left)) {
            z6 = false;
        } else {
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = i5;
            z6 = true;
        }
        if (z3 && ((ViewGroup.MarginLayoutParams) layoutParams).topMargin != (i4 = rect.top)) {
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = i4;
            z6 = true;
        }
        if (z5 && ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin != (i3 = rect.right)) {
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = i3;
            z6 = true;
        }
        if (!z4 || ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin == (i2 = rect.bottom)) {
            return z6;
        }
        ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = i2;
        return true;
    }

    private void t(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(C);
        boolean z2 = false;
        this.b = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.g = drawable;
        setWillNotDraw(drawable == null);
        obtainStyledAttributes.recycle();
        if (context.getApplicationInfo().targetSdkVersion < 19) {
            z2 = true;
        }
        this.h = z2;
        this.w = new OverScroller(context);
    }

    public void A() {
    }

    @Override // androidx.appcompat.widget.m
    public void a(Menu menu, m.a aVar) {
        v();
        this.f.a(menu, aVar);
    }

    @Override // androidx.appcompat.widget.m
    public void b(CharSequence charSequence) {
        v();
        this.f.b(charSequence);
    }

    @Override // androidx.appcompat.widget.m
    public boolean c() {
        v();
        return this.f.c();
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.appcompat.widget.m
    public void d() {
        v();
        this.f.d();
    }

    public void draw(Canvas canvas) {
        int i2;
        super.draw(canvas);
        if (this.g != null && !this.h) {
            if (this.e.getVisibility() == 0) {
                i2 = (int) (this.e.getTranslationY() + ((float) this.e.getBottom()) + 0.5f);
            } else {
                i2 = 0;
            }
            this.g.setBounds(0, i2, getWidth(), this.g.getIntrinsicHeight() + i2);
            this.g.draw(canvas);
        }
    }

    @Override // androidx.appcompat.widget.m
    public boolean e() {
        v();
        return this.f.e();
    }

    @Override // androidx.appcompat.widget.m
    public void f(Window.Callback callback) {
        v();
        this.f.f(callback);
    }

    /* access modifiers changed from: protected */
    public boolean fitSystemWindows(Rect rect) {
        v();
        int i2 = c3.g;
        int windowSystemUiVisibility = getWindowSystemUiVisibility() & 256;
        boolean r2 = r(this.e, rect, true, true, false, true);
        this.r.set(rect);
        p0.a(this, this.r, this.o);
        if (!this.s.equals(this.r)) {
            this.s.set(this.r);
            r2 = true;
        }
        if (!this.p.equals(this.o)) {
            this.p.set(this.o);
            r2 = true;
        }
        if (r2) {
            requestLayout();
        }
        return true;
    }

    @Override // defpackage.v2
    public void g(View view, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        if (i6 == 0) {
            onNestedScroll(view, i2, i3, i4, i5);
        }
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public int getNestedScrollAxes() {
        return this.B.a();
    }

    @Override // androidx.appcompat.widget.m
    public boolean h() {
        v();
        return this.f.h();
    }

    @Override // androidx.appcompat.widget.m
    public boolean i() {
        v();
        return this.f.i();
    }

    @Override // androidx.appcompat.widget.m
    public boolean j() {
        v();
        return this.f.j();
    }

    @Override // androidx.appcompat.widget.m
    public void k(int i2) {
        v();
        if (i2 == 2) {
            this.f.v();
        } else if (i2 == 5) {
            this.f.w();
        } else if (i2 == 109) {
            boolean z2 = true;
            this.i = true;
            if (getContext().getApplicationInfo().targetSdkVersion >= 19) {
                z2 = false;
            }
            this.h = z2;
        }
    }

    @Override // androidx.appcompat.widget.m
    public void l() {
        v();
        this.f.k();
    }

    @Override // defpackage.u2
    public void m(View view, int i2, int i3, int i4, int i5, int i6) {
        if (i6 == 0) {
            onNestedScroll(view, i2, i3, i4, i5);
        }
    }

    @Override // defpackage.u2
    public boolean n(View view, View view2, int i2, int i3) {
        return i3 == 0 && onStartNestedScroll(view, view2, i2);
    }

    @Override // defpackage.u2
    public void o(View view, View view2, int i2, int i3) {
        if (i3 == 0) {
            onNestedScrollAccepted(view, view2, i2);
        }
    }

    /* access modifiers changed from: protected */
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        t(getContext());
        int i2 = c3.g;
        if (Build.VERSION.SDK_INT >= 20) {
            requestApplyInsets();
        } else {
            requestFitSystemWindows();
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        s();
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        getPaddingRight();
        int paddingTop = getPaddingTop();
        getPaddingBottom();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i7 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + paddingLeft;
                int i8 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + paddingTop;
                childAt.layout(i7, i8, measuredWidth + i7, measuredHeight + i8);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        int i4;
        v();
        measureChildWithMargins(this.e, i2, 0, i3, 0);
        LayoutParams layoutParams = (LayoutParams) this.e.getLayoutParams();
        int max = Math.max(0, this.e.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
        int max2 = Math.max(0, this.e.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.e.getMeasuredState());
        int i5 = c3.g;
        boolean z2 = (getWindowSystemUiVisibility() & 256) != 0;
        if (z2) {
            i4 = this.b;
            if (this.j && this.e.b() != null) {
                i4 += this.b;
            }
        } else {
            i4 = this.e.getVisibility() != 8 ? this.e.getMeasuredHeight() : 0;
        }
        this.q.set(this.o);
        this.t.set(this.r);
        if (this.i || z2) {
            Rect rect = this.t;
            rect.top += i4;
            rect.bottom += 0;
        } else {
            Rect rect2 = this.q;
            rect2.top += i4;
            rect2.bottom += 0;
        }
        r(this.d, this.q, true, true, true, true);
        if (!this.u.equals(this.t)) {
            this.u.set(this.t);
            this.d.a(this.t);
        }
        measureChildWithMargins(this.d, i2, 0, i3, 0);
        LayoutParams layoutParams2 = (LayoutParams) this.d.getLayoutParams();
        int max3 = Math.max(max, this.d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
        int max4 = Math.max(max2, this.d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.d.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + max3, getSuggestedMinimumWidth()), i2, combineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + max4, getSuggestedMinimumHeight()), i3, combineMeasuredStates2 << 16));
    }

    @Override // defpackage.w2
    public boolean onNestedFling(View view, float f2, float f3, boolean z2) {
        boolean z3 = false;
        if (!this.k || !z2) {
            return false;
        }
        this.w.fling(0, 0, 0, (int) f3, 0, 0, RecyclerView.UNDEFINED_DURATION, Integer.MAX_VALUE);
        if (this.w.getFinalY() > this.e.getHeight()) {
            z3 = true;
        }
        if (z3) {
            s();
            this.A.run();
        } else {
            s();
            this.z.run();
        }
        this.l = true;
        return true;
    }

    @Override // defpackage.w2
    public boolean onNestedPreFling(View view, float f2, float f3) {
        return false;
    }

    @Override // defpackage.w2
    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
    }

    @Override // defpackage.w2
    public void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        int i6 = this.m + i3;
        this.m = i6;
        w(i6);
    }

    @Override // defpackage.w2
    public void onNestedScrollAccepted(View view, View view2, int i2) {
        this.B.c(view, view2, i2);
        ActionBarContainer actionBarContainer = this.e;
        this.m = actionBarContainer != null ? -((int) actionBarContainer.getTranslationY()) : 0;
        s();
        d dVar = this.v;
        if (dVar != null) {
            ((t) dVar).w();
        }
    }

    @Override // defpackage.w2
    public boolean onStartNestedScroll(View view, View view2, int i2) {
        if ((i2 & 2) == 0 || this.e.getVisibility() != 0) {
            return false;
        }
        return this.k;
    }

    @Override // defpackage.w2
    public void onStopNestedScroll(View view) {
        if (this.k && !this.l) {
            if (this.m <= this.e.getHeight()) {
                s();
                postDelayed(this.z, 600);
            } else {
                s();
                postDelayed(this.A, 600);
            }
        }
        d dVar = this.v;
        if (dVar != null) {
            Objects.requireNonNull((t) dVar);
        }
    }

    public void onWindowSystemUiVisibilityChanged(int i2) {
        int i3 = Build.VERSION.SDK_INT;
        super.onWindowSystemUiVisibilityChanged(i2);
        v();
        int i4 = this.n ^ i2;
        this.n = i2;
        boolean z2 = false;
        boolean z3 = (i2 & 4) == 0;
        if ((i2 & 256) != 0) {
            z2 = true;
        }
        d dVar = this.v;
        if (dVar != null) {
            ((t) dVar).t(!z2);
            if (z3 || !z2) {
                ((t) this.v).z();
            } else {
                ((t) this.v).u();
            }
        }
        if ((i4 & 256) != 0 && this.v != null) {
            int i5 = c3.g;
            if (i3 >= 20) {
                requestApplyInsets();
            } else {
                requestFitSystemWindows();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        this.c = i2;
        d dVar = this.v;
        if (dVar != null) {
            ((t) dVar).x(i2);
        }
    }

    @Override // defpackage.u2
    public void p(View view, int i2) {
        if (i2 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // defpackage.u2
    public void q(View view, int i2, int i3, int[] iArr, int i4) {
        if (i4 == 0) {
            onNestedPreScroll(view, i2, i3, iArr);
        }
    }

    /* access modifiers changed from: package-private */
    public void s() {
        removeCallbacks(this.z);
        removeCallbacks(this.A);
        ViewPropertyAnimator viewPropertyAnimator = this.x;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public boolean u() {
        return this.i;
    }

    /* access modifiers changed from: package-private */
    public void v() {
        n nVar;
        if (this.d == null) {
            this.d = (ContentFrameLayout) findViewById(R.id.ao);
            this.e = (ActionBarContainer) findViewById(R.id.ap);
            View findViewById = findViewById(R.id.an);
            if (findViewById instanceof n) {
                nVar = (n) findViewById;
            } else if (findViewById instanceof Toolbar) {
                nVar = ((Toolbar) findViewById).C();
            } else {
                StringBuilder q2 = ic.q("Can't make a decor toolbar out of ");
                q2.append(findViewById.getClass().getSimpleName());
                throw new IllegalStateException(q2.toString());
            }
            this.f = nVar;
        }
    }

    public void w(int i2) {
        s();
        this.e.setTranslationY((float) (-Math.max(0, Math.min(i2, this.e.getHeight()))));
    }

    public void x(d dVar) {
        this.v = dVar;
        if (getWindowToken() != null) {
            ((t) this.v).x(this.c);
            int i2 = this.n;
            if (i2 != 0) {
                onWindowSystemUiVisibilityChanged(i2);
                int i3 = c3.g;
                if (Build.VERSION.SDK_INT >= 20) {
                    requestApplyInsets();
                } else {
                    requestFitSystemWindows();
                }
            }
        }
    }

    public void y(boolean z2) {
        this.j = z2;
    }

    public void z(boolean z2) {
        if (z2 != this.k) {
            this.k = z2;
            if (!z2) {
                s();
                w(0);
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }
}
