package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;

public class ActionMenuView extends LinearLayoutCompat implements g.b, n {
    private int A;
    d B;
    private g q;
    private Context r;
    private int s = 0;
    private boolean t;
    private ActionMenuPresenter u;
    private m.a v;
    g.a w;
    private boolean x;
    private int y;
    private int z;

    public static class LayoutParams extends LinearLayoutCompat.LayoutParams {
        @ViewDebug.ExportedProperty
        public boolean c;
        @ViewDebug.ExportedProperty
        public int d;
        @ViewDebug.ExportedProperty
        public int e;
        @ViewDebug.ExportedProperty
        public boolean f;
        @ViewDebug.ExportedProperty
        public boolean g;
        boolean h;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.c = layoutParams.c;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.c = false;
        }
    }

    public interface a {
        boolean b();

        boolean e();
    }

    /* access modifiers changed from: private */
    public static class b implements m.a {
        b() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void b(g gVar, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean c(g gVar) {
            return false;
        }
    }

    /* access modifiers changed from: private */
    public class c implements g.a {
        c() {
        }

        @Override // androidx.appcompat.view.menu.g.a
        public boolean a(g gVar, MenuItem menuItem) {
            d dVar = ActionMenuView.this.B;
            if (dVar == null) {
                return false;
            }
            Toolbar.e eVar = Toolbar.this.H;
            if (eVar != null ? eVar.onMenuItemClick(menuItem) : false) {
                return true;
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.g.a
        public void b(g gVar) {
            g.a aVar = ActionMenuView.this.w;
            if (aVar != null) {
                aVar.b(gVar);
            }
        }
    }

    public interface d {
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        v(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.z = (int) (56.0f * f);
        this.A = (int) (f * 4.0f);
        this.r = context;
    }

    static int G(View view, int i, int i2, int i3, int i4) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3) - i4, View.MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z2 = false;
        boolean z3 = actionMenuItemView != null && actionMenuItemView.l();
        int i5 = 2;
        if (i2 <= 0 || (z3 && i2 < 2)) {
            i5 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i2 * i, RecyclerView.UNDEFINED_DURATION), makeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            int i6 = measuredWidth / i;
            if (measuredWidth % i != 0) {
                i6++;
            }
            if (!z3 || i6 >= 2) {
                i5 = i6;
            }
        }
        if (!layoutParams.c && z3) {
            z2 = true;
        }
        layoutParams.f = z2;
        layoutParams.d = i5;
        view.measure(View.MeasureSpec.makeMeasureSpec(i * i5, 1073741824), makeMeasureSpec);
        return i5;
    }

    public Menu A() {
        if (this.q == null) {
            Context context = getContext();
            g gVar = new g(context);
            this.q = gVar;
            gVar.G(new c());
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(context);
            this.u = actionMenuPresenter;
            actionMenuPresenter.D(true);
            ActionMenuPresenter actionMenuPresenter2 = this.u;
            m.a aVar = this.v;
            if (aVar == null) {
                aVar = new b();
            }
            actionMenuPresenter2.g(aVar);
            this.q.c(this.u, this.r);
            this.u.C(this);
        }
        return this.q;
    }

    /* access modifiers changed from: protected */
    public boolean B(int i) {
        boolean z2 = false;
        if (i == 0) {
            return false;
        }
        View childAt = getChildAt(i - 1);
        View childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof a)) {
            z2 = false | ((a) childAt).b();
        }
        return (i <= 0 || !(childAt2 instanceof a)) ? z2 : z2 | ((a) childAt2).e();
    }

    public boolean C() {
        ActionMenuPresenter actionMenuPresenter = this.u;
        return actionMenuPresenter != null && actionMenuPresenter.y();
    }

    public boolean D() {
        ActionMenuPresenter actionMenuPresenter = this.u;
        if (actionMenuPresenter != null) {
            if (actionMenuPresenter.v != null || actionMenuPresenter.z()) {
                return true;
            }
        }
        return false;
    }

    public boolean E() {
        ActionMenuPresenter actionMenuPresenter = this.u;
        return actionMenuPresenter != null && actionMenuPresenter.z();
    }

    public boolean F() {
        return this.t;
    }

    public g H() {
        return this.q;
    }

    public void I(boolean z2) {
        this.u.B(z2);
    }

    public void J(m.a aVar, g.a aVar2) {
        this.v = aVar;
        this.w = aVar2;
    }

    public void K(boolean z2) {
        this.t = z2;
    }

    public void L(int i) {
        if (this.s != i) {
            this.s = i;
            if (i == 0) {
                this.r = getContext();
            } else {
                this.r = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void M(ActionMenuPresenter actionMenuPresenter) {
        this.u = actionMenuPresenter;
        actionMenuPresenter.C(this);
    }

    public boolean N() {
        ActionMenuPresenter actionMenuPresenter = this.u;
        return actionMenuPresenter != null && actionMenuPresenter.E();
    }

    @Override // androidx.appcompat.view.menu.g.b
    public boolean a(i iVar) {
        return this.q.z(iVar, null, 0);
    }

    @Override // androidx.appcompat.view.menu.n
    public void b(g gVar) {
        this.q = gVar;
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat
    public LinearLayoutCompat.LayoutParams j(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionMenuPresenter actionMenuPresenter = this.u;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.c(false);
            if (this.u.z()) {
                this.u.y();
                this.u.E();
            }
        }
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActionMenuPresenter actionMenuPresenter = this.u;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.x();
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat
    public void onLayout(boolean z2, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (!this.x) {
            super.onLayout(z2, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i7 = (i4 - i2) / 2;
        int o = o();
        int i8 = i3 - i;
        int paddingRight = (i8 - getPaddingRight()) - getPaddingLeft();
        boolean b2 = p0.b(this);
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.c) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (B(i11)) {
                        measuredWidth += o;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (b2) {
                        i5 = getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                        i6 = i5 + measuredWidth;
                    } else {
                        i6 = (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                        i5 = i6 - measuredWidth;
                    }
                    int i12 = i7 - (measuredHeight / 2);
                    childAt.layout(i5, i12, i6, measuredHeight + i12);
                    paddingRight -= measuredWidth;
                    i9 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    B(i11);
                    i10++;
                }
            }
        }
        if (childCount == 1 && i9 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i13 = (i8 / 2) - (measuredWidth2 / 2);
            int i14 = i7 - (measuredHeight2 / 2);
            childAt2.layout(i13, i14, measuredWidth2 + i13, measuredHeight2 + i14);
            return;
        }
        int i15 = i10 - (i9 ^ 1);
        int max = Math.max(0, i15 > 0 ? paddingRight / i15 : 0);
        if (b2) {
            int width = getWidth() - getPaddingRight();
            for (int i16 = 0; i16 < childCount; i16++) {
                View childAt3 = getChildAt(i16);
                LayoutParams layoutParams2 = (LayoutParams) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !layoutParams2.c) {
                    int i17 = width - ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i18 = i7 - (measuredHeight3 / 2);
                    childAt3.layout(i17 - measuredWidth3, i18, i17, measuredHeight3 + i18);
                    width = i17 - ((measuredWidth3 + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin) + max);
                }
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        for (int i19 = 0; i19 < childCount; i19++) {
            View childAt4 = getChildAt(i19);
            LayoutParams layoutParams3 = (LayoutParams) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !layoutParams3.c) {
                int i20 = paddingLeft + ((ViewGroup.MarginLayoutParams) layoutParams3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i21 = i7 - (measuredHeight4 / 2);
                childAt4.layout(i20, i21, i20 + measuredWidth4, measuredHeight4 + i21);
                paddingLeft = measuredWidth4 + ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin + max + i20;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v32, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r3v38 */
    /* JADX WARN: Type inference failed for: r3v39 */
    /* access modifiers changed from: protected */
    /* JADX WARNING: Unknown variable types count: 1 */
    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onMeasure(int r30, int r31) {
        /*
        // Method dump skipped, instructions count: 685
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionMenuView.onMeasure(int, int):void");
    }

    public void x() {
        ActionMenuPresenter actionMenuPresenter = this.u;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.x();
        }
    }

    /* access modifiers changed from: protected */
    /* renamed from: y */
    public LayoutParams i() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.b = 16;
        return layoutParams;
    }

    /* access modifiers changed from: protected */
    /* renamed from: z */
    public LayoutParams l(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return i();
        }
        LayoutParams layoutParams2 = layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : new LayoutParams(layoutParams);
        if (layoutParams2.b <= 0) {
            layoutParams2.b = 16;
        }
        return layoutParams2;
    }

    @Override // android.view.ViewGroup, androidx.appcompat.widget.LinearLayoutCompat
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }
}
