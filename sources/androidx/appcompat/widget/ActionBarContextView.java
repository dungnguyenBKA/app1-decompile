package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.a;
import androidx.recyclerview.widget.RecyclerView;
import photoeditor.cutout.backgrounderaser.R;

public class ActionBarContextView extends a {
    private CharSequence j;
    private CharSequence k;
    private View l;
    private View m;
    private LinearLayout n;
    private TextView o;
    private TextView p;
    private int q;
    private int r;
    private boolean s;
    private int t;

    /* access modifiers changed from: package-private */
    public class a implements View.OnClickListener {
        final /* synthetic */ k b;

        a(ActionBarContextView actionBarContextView, k kVar) {
            this.b = kVar;
        }

        public void onClick(View view) {
            this.b.c();
        }
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.a1);
    }

    private void i() {
        if (this.n == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.a, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.n = linearLayout;
            this.o = (TextView) linearLayout.findViewById(R.id.at);
            this.p = (TextView) this.n.findViewById(R.id.as);
            if (this.q != 0) {
                this.o.setTextAppearance(getContext(), this.q);
            }
            if (this.r != 0) {
                this.p.setTextAppearance(getContext(), this.r);
            }
        }
        this.o.setText(this.j);
        this.p.setText(this.k);
        boolean z = !TextUtils.isEmpty(this.j);
        boolean z2 = !TextUtils.isEmpty(this.k);
        int i = 0;
        this.p.setVisibility(z2 ? 0 : 8);
        LinearLayout linearLayout2 = this.n;
        if (!z && !z2) {
            i = 8;
        }
        linearLayout2.setVisibility(i);
        if (this.n.getParent() == null) {
            addView(this.n);
        }
    }

    public void e() {
        if (this.l == null) {
            k();
        }
    }

    public CharSequence f() {
        return this.k;
    }

    public CharSequence g() {
        return this.j;
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public void h(k kVar) {
        View view = this.l;
        if (view == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(this.t, (ViewGroup) this, false);
            this.l = inflate;
            addView(inflate);
        } else if (view.getParent() == null) {
            addView(this.l);
        }
        this.l.findViewById(R.id.b2).setOnClickListener(new a(this, kVar));
        g gVar = (g) kVar.e();
        ActionMenuPresenter actionMenuPresenter = this.e;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.x();
        }
        ActionMenuPresenter actionMenuPresenter2 = new ActionMenuPresenter(getContext());
        this.e = actionMenuPresenter2;
        actionMenuPresenter2.D(true);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        gVar.c(this.e, this.c);
        ActionMenuView actionMenuView = (ActionMenuView) this.e.o(this);
        this.d = actionMenuView;
        int i = c3.g;
        actionMenuView.setBackground(null);
        addView(this.d, layoutParams);
    }

    public boolean j() {
        return this.s;
    }

    public void k() {
        removeAllViews();
        this.m = null;
        this.d = null;
    }

    public void l(int i) {
        this.f = i;
    }

    public void m(View view) {
        LinearLayout linearLayout;
        View view2 = this.m;
        if (view2 != null) {
            removeView(view2);
        }
        this.m = view;
        if (!(view == null || (linearLayout = this.n) == null)) {
            removeView(linearLayout);
            this.n = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void n(CharSequence charSequence) {
        this.k = charSequence;
        i();
    }

    public void o(CharSequence charSequence) {
        this.j = charSequence;
        i();
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActionMenuPresenter actionMenuPresenter = this.e;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.y();
            ActionMenuPresenter.a aVar = this.e.u;
            if (aVar != null) {
                aVar.a();
            }
        }
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 32) {
            accessibilityEvent.setSource(this);
            accessibilityEvent.setClassName(getClass().getName());
            accessibilityEvent.setPackageName(getContext().getPackageName());
            accessibilityEvent.setContentDescription(this.j);
            return;
        }
        super.onInitializeAccessibilityEvent(accessibilityEvent);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean b = p0.b(this);
        int paddingRight = b ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        View view = this.l;
        if (!(view == null || view.getVisibility() == 8)) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.l.getLayoutParams();
            int i5 = b ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i6 = b ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int i7 = b ? paddingRight - i5 : paddingRight + i5;
            int d = i7 + d(this.l, i7, paddingTop, paddingTop2, b);
            paddingRight = b ? d - i6 : d + i6;
        }
        int i8 = paddingRight;
        LinearLayout linearLayout = this.n;
        if (!(linearLayout == null || this.m != null || linearLayout.getVisibility() == 8)) {
            i8 += d(this.n, i8, paddingTop, paddingTop2, b);
        }
        View view2 = this.m;
        if (view2 != null) {
            d(view2, i8, paddingTop, paddingTop2, b);
        }
        int paddingLeft = b ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        ActionMenuView actionMenuView = this.d;
        if (actionMenuView != null) {
            d(actionMenuView, paddingLeft, paddingTop, paddingTop2, !b);
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        int i3 = 1073741824;
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        } else if (View.MeasureSpec.getMode(i2) != 0) {
            int size = View.MeasureSpec.getSize(i);
            int i4 = this.f;
            if (i4 <= 0) {
                i4 = View.MeasureSpec.getSize(i2);
            }
            int paddingBottom = getPaddingBottom() + getPaddingTop();
            int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
            int i5 = i4 - paddingBottom;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5, RecyclerView.UNDEFINED_DURATION);
            View view = this.l;
            if (view != null) {
                int c = c(view, paddingLeft, makeMeasureSpec, 0);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.l.getLayoutParams();
                paddingLeft = c - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
            }
            ActionMenuView actionMenuView = this.d;
            if (actionMenuView != null && actionMenuView.getParent() == this) {
                paddingLeft = c(this.d, paddingLeft, makeMeasureSpec, 0);
            }
            LinearLayout linearLayout = this.n;
            if (linearLayout != null && this.m == null) {
                if (this.s) {
                    this.n.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                    int measuredWidth = this.n.getMeasuredWidth();
                    boolean z = measuredWidth <= paddingLeft;
                    if (z) {
                        paddingLeft -= measuredWidth;
                    }
                    this.n.setVisibility(z ? 0 : 8);
                } else {
                    paddingLeft = c(linearLayout, paddingLeft, makeMeasureSpec, 0);
                }
            }
            View view2 = this.m;
            if (view2 != null) {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                int i6 = layoutParams.width;
                int i7 = i6 != -2 ? 1073741824 : RecyclerView.UNDEFINED_DURATION;
                if (i6 >= 0) {
                    paddingLeft = Math.min(i6, paddingLeft);
                }
                int i8 = layoutParams.height;
                if (i8 == -2) {
                    i3 = RecyclerView.UNDEFINED_DURATION;
                }
                if (i8 >= 0) {
                    i5 = Math.min(i8, i5);
                }
                this.m.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i7), View.MeasureSpec.makeMeasureSpec(i5, i3));
            }
            if (this.f <= 0) {
                int childCount = getChildCount();
                int i9 = 0;
                for (int i10 = 0; i10 < childCount; i10++) {
                    int measuredHeight = getChildAt(i10).getMeasuredHeight() + paddingBottom;
                    if (measuredHeight > i9) {
                        i9 = measuredHeight;
                    }
                }
                setMeasuredDimension(size, i9);
                return;
            }
            setMeasuredDimension(size, i4);
        } else {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
    }

    public void p(boolean z) {
        if (z != this.s) {
            requestLayout();
        }
        this.s = z;
    }

    public h3 q(int i, long j2) {
        h3 h3Var = this.g;
        if (h3Var != null) {
            h3Var.b();
        }
        if (i == 0) {
            if (getVisibility() != 0) {
                setAlpha(0.0f);
            }
            h3 a2 = c3.a(this);
            a2.a(1.0f);
            a2.d(j2);
            a.C0003a aVar = this.b;
            a.this.g = a2;
            aVar.b = i;
            a2.f(aVar);
            return a2;
        }
        h3 a3 = c3.a(this);
        a3.a(0.0f);
        a3.d(j2);
        a.C0003a aVar2 = this.b;
        a.this.g = a3;
        aVar2.b = i;
        a3.f(aVar2);
        return a3;
    }

    public boolean r() {
        ActionMenuPresenter actionMenuPresenter = this.e;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.E();
        }
        return false;
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        i0 u = i0.u(context, attributeSet, R$styleable.d, i, 0);
        Drawable g = u.g(0);
        int i2 = c3.g;
        setBackground(g);
        this.q = u.n(5, 0);
        this.r = u.n(4, 0);
        this.f = u.m(3, 0);
        this.t = u.n(2, R.layout.f);
        u.v();
    }
}
