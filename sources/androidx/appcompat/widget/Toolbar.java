package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.r;
import androidx.appcompat.widget.ActionMenuView;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

public class Toolbar extends ViewGroup {
    private ColorStateList A;
    private ColorStateList B;
    private boolean C;
    private boolean D;
    private final ArrayList<View> E;
    private final ArrayList<View> F;
    private final int[] G;
    e H;
    private final ActionMenuView.d I;
    private k0 J;
    private ActionMenuPresenter K;
    private d L;
    private m.a M;
    private g.a N;
    private boolean O;
    private final Runnable P;
    private ActionMenuView b;
    private TextView c;
    private TextView d;
    private ImageButton e;
    private ImageView f;
    private Drawable g;
    private CharSequence h;
    ImageButton i;
    View j;
    private Context k;
    private int l;
    private int m;
    private int n;
    int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private x u;
    private int v;
    private int w;
    private int x;
    private CharSequence y;
    private CharSequence z;

    class a implements ActionMenuView.d {
        a() {
        }
    }

    class b implements Runnable {
        b() {
        }

        public void run() {
            Toolbar.this.c0();
        }
    }

    /* access modifiers changed from: package-private */
    public class c implements View.OnClickListener {
        c() {
        }

        public void onClick(View view) {
            Toolbar.this.f();
        }
    }

    /* access modifiers changed from: private */
    public class d implements m {
        g b;
        i c;

        d() {
        }

        @Override // androidx.appcompat.view.menu.m
        public void b(g gVar, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.m
        public void c(boolean z) {
            if (this.c != null) {
                g gVar = this.b;
                boolean z2 = false;
                if (gVar != null) {
                    int size = gVar.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        } else if (this.b.getItem(i) == this.c) {
                            z2 = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                if (!z2) {
                    e(this.b, this.c);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean d() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean e(g gVar, i iVar) {
            View view = Toolbar.this.j;
            if (view instanceof l) {
                ((l) view).e();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.j);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.i);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.j = null;
            toolbar3.b();
            this.c = null;
            Toolbar.this.requestLayout();
            iVar.p(false);
            return true;
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean f(g gVar, i iVar) {
            Toolbar.this.h();
            ViewParent parent = Toolbar.this.i.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.i);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.i);
            }
            Toolbar.this.j = iVar.getActionView();
            this.c = iVar;
            ViewParent parent2 = Toolbar.this.j.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.j);
                }
                LayoutParams l = Toolbar.this.generateDefaultLayoutParams();
                Toolbar toolbar4 = Toolbar.this;
                l.a = 8388611 | (toolbar4.o & 112);
                l.b = 2;
                toolbar4.j.setLayoutParams(l);
                Toolbar toolbar5 = Toolbar.this;
                toolbar5.addView(toolbar5.j);
            }
            Toolbar.this.M();
            Toolbar.this.requestLayout();
            iVar.p(true);
            View view = Toolbar.this.j;
            if (view instanceof l) {
                ((l) view).d();
            }
            return true;
        }

        @Override // androidx.appcompat.view.menu.m
        public int getId() {
            return 0;
        }

        @Override // androidx.appcompat.view.menu.m
        public void h(Context context, g gVar) {
            i iVar;
            g gVar2 = this.b;
            if (!(gVar2 == null || (iVar = this.c) == null)) {
                gVar2.f(iVar);
            }
            this.b = gVar;
        }

        @Override // androidx.appcompat.view.menu.m
        public void i(Parcelable parcelable) {
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean j(r rVar) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.m
        public Parcelable k() {
            return null;
        }
    }

    public interface e {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.ud);
    }

    private int B(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    private boolean F(View view) {
        return view.getParent() == this || this.F.contains(view);
    }

    private int I(View view, int i2, int[] iArr, int i3) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin - iArr[0];
        int max = Math.max(0, i4) + i2;
        iArr[0] = Math.max(0, -i4);
        int o2 = o(view, i3);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, o2, max + measuredWidth, view.getMeasuredHeight() + o2);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + max;
    }

    private int J(View view, int i2, int[] iArr, int i3) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin - iArr[1];
        int max = i2 - Math.max(0, i4);
        iArr[1] = Math.max(0, -i4);
        int o2 = o(view, i3);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, o2, max, view.getMeasuredHeight() + o2);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin);
    }

    private int K(View view, int i2, int i3, int i4, int i5, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i6 = marginLayoutParams.leftMargin - iArr[0];
        int i7 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i7) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i6);
        iArr[1] = Math.max(0, -i7);
        view.measure(ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft() + max + i3, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i4, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i5, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    private void L(View view, int i2, int i3, int i4, int i5, int i6) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i3, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i4, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i5, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i6 >= 0) {
            if (mode != 0) {
                i6 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i6);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    private boolean b0(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    private void c(List<View> list, int i2) {
        int i3 = c3.g;
        boolean z2 = getLayoutDirection() == 1;
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i2, getLayoutDirection());
        list.clear();
        if (z2) {
            for (int i4 = childCount - 1; i4 >= 0; i4--) {
                View childAt = getChildAt(i4);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.b == 0 && b0(childAt) && n(layoutParams.a) == absoluteGravity) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt2 = getChildAt(i5);
            LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
            if (layoutParams2.b == 0 && b0(childAt2) && n(layoutParams2.a) == absoluteGravity) {
                list.add(childAt2);
            }
        }
    }

    private void d(View view, boolean z2) {
        LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        if (layoutParams2 == null) {
            layoutParams = generateDefaultLayoutParams();
        } else if (!checkLayoutParams(layoutParams2)) {
            layoutParams = generateLayoutParams(layoutParams2);
        } else {
            layoutParams = (LayoutParams) layoutParams2;
        }
        layoutParams.b = 1;
        if (!z2 || this.j == null) {
            addView(view, layoutParams);
            return;
        }
        view.setLayoutParams(layoutParams);
        this.F.add(view);
    }

    private void i() {
        if (this.u == null) {
            this.u = new x();
        }
    }

    private void j() {
        if (this.b == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext(), null);
            this.b = actionMenuView;
            actionMenuView.L(this.l);
            ActionMenuView actionMenuView2 = this.b;
            actionMenuView2.B = this.I;
            actionMenuView2.J(this.M, this.N);
            LayoutParams l2 = generateDefaultLayoutParams();
            l2.a = 8388613 | (this.o & 112);
            this.b.setLayoutParams(l2);
            d(this.b, false);
        }
    }

    private void k() {
        if (this.e == null) {
            this.e = new AppCompatImageButton(getContext(), null, R.attr.uc);
            LayoutParams l2 = generateDefaultLayoutParams();
            l2.a = 8388611 | (this.o & 112);
            this.e.setLayoutParams(l2);
        }
    }

    private int n(int i2) {
        int i3 = c3.g;
        int layoutDirection = getLayoutDirection();
        int absoluteGravity = Gravity.getAbsoluteGravity(i2, layoutDirection) & 7;
        if (absoluteGravity == 1 || absoluteGravity == 3 || absoluteGravity == 5) {
            return absoluteGravity;
        }
        return layoutDirection == 1 ? 5 : 3;
    }

    private int o(View view, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i3 = i2 > 0 ? (measuredHeight - i2) / 2 : 0;
        int i4 = layoutParams.a & 112;
        if (!(i4 == 16 || i4 == 48 || i4 == 80)) {
            i4 = this.x & 112;
        }
        if (i4 == 48) {
            return getPaddingTop() - i3;
        }
        if (i4 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - i3;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i5 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i6 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        if (i5 < i6) {
            i5 = i6;
        } else {
            int i7 = (((height - paddingBottom) - measuredHeight) - i5) - paddingTop;
            int i8 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            if (i7 < i8) {
                i5 = Math.max(0, i5 - (i8 - i7));
            }
        }
        return paddingTop + i5;
    }

    private int r(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginStart() + marginLayoutParams.getMarginEnd();
    }

    public int A() {
        return this.s;
    }

    public n C() {
        if (this.J == null) {
            this.J = new k0(this, true);
        }
        return this.J;
    }

    public boolean D() {
        d dVar = this.L;
        return (dVar == null || dVar.c == null) ? false : true;
    }

    public boolean E() {
        ActionMenuView actionMenuView = this.b;
        return actionMenuView != null && actionMenuView.C();
    }

    public boolean G() {
        ActionMenuView actionMenuView = this.b;
        return actionMenuView != null && actionMenuView.D();
    }

    public boolean H() {
        ActionMenuView actionMenuView = this.b;
        return actionMenuView != null && actionMenuView.E();
    }

    /* access modifiers changed from: package-private */
    public void M() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (!(((LayoutParams) childAt.getLayoutParams()).b == 2 || childAt == this.b)) {
                removeViewAt(childCount);
                this.F.add(childAt);
            }
        }
    }

    public void N(boolean z2) {
        this.O = z2;
        requestLayout();
    }

    public void O(int i2, int i3) {
        i();
        this.u.e(i2, i3);
    }

    public void P(Drawable drawable) {
        if (drawable != null) {
            if (this.f == null) {
                this.f = new AppCompatImageView(getContext(), null);
            }
            if (!F(this.f)) {
                d(this.f, true);
            }
        } else {
            ImageView imageView = this.f;
            if (imageView != null && F(imageView)) {
                removeView(this.f);
                this.F.remove(this.f);
            }
        }
        ImageView imageView2 = this.f;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void Q(g gVar, ActionMenuPresenter actionMenuPresenter) {
        i iVar;
        if (gVar != null || this.b != null) {
            j();
            g H2 = this.b.H();
            if (H2 != gVar) {
                if (H2 != null) {
                    H2.B(this.K);
                    H2.B(this.L);
                }
                if (this.L == null) {
                    this.L = new d();
                }
                actionMenuPresenter.B(true);
                if (gVar != null) {
                    gVar.c(actionMenuPresenter, this.k);
                    gVar.c(this.L, this.k);
                } else {
                    actionMenuPresenter.h(this.k, null);
                    d dVar = this.L;
                    g gVar2 = dVar.b;
                    if (!(gVar2 == null || (iVar = dVar.c) == null)) {
                        gVar2.f(iVar);
                    }
                    dVar.b = null;
                    actionMenuPresenter.c(true);
                    this.L.c(true);
                }
                this.b.L(this.l);
                this.b.M(actionMenuPresenter);
                this.K = actionMenuPresenter;
            }
        }
    }

    public void R(m.a aVar, g.a aVar2) {
        this.M = aVar;
        this.N = aVar2;
        ActionMenuView actionMenuView = this.b;
        if (actionMenuView != null) {
            actionMenuView.J(aVar, aVar2);
        }
    }

    public void S(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            k();
        }
        ImageButton imageButton = this.e;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void T(Drawable drawable) {
        if (drawable != null) {
            k();
            if (!F(this.e)) {
                d(this.e, true);
            }
        } else {
            ImageButton imageButton = this.e;
            if (imageButton != null && F(imageButton)) {
                removeView(this.e);
                this.F.remove(this.e);
            }
        }
        ImageButton imageButton2 = this.e;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void U(View.OnClickListener onClickListener) {
        k();
        this.e.setOnClickListener(onClickListener);
    }

    public void V(e eVar) {
        this.H = eVar;
    }

    public void W(int i2) {
        if (this.l != i2) {
            this.l = i2;
            if (i2 == 0) {
                this.k = getContext();
            } else {
                this.k = new ContextThemeWrapper(getContext(), i2);
            }
        }
    }

    public void X(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.d == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                this.d = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.d.setEllipsize(TextUtils.TruncateAt.END);
                int i2 = this.n;
                if (i2 != 0) {
                    this.d.setTextAppearance(context, i2);
                }
                ColorStateList colorStateList = this.B;
                if (colorStateList != null) {
                    this.d.setTextColor(colorStateList);
                }
            }
            if (!F(this.d)) {
                d(this.d, true);
            }
        } else {
            TextView textView = this.d;
            if (textView != null && F(textView)) {
                removeView(this.d);
                this.F.remove(this.d);
            }
        }
        TextView textView2 = this.d;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.z = charSequence;
    }

    public void Y(Context context, int i2) {
        this.n = i2;
        TextView textView = this.d;
        if (textView != null) {
            textView.setTextAppearance(context, i2);
        }
    }

    public void Z(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.c == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                this.c = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.c.setEllipsize(TextUtils.TruncateAt.END);
                int i2 = this.m;
                if (i2 != 0) {
                    this.c.setTextAppearance(context, i2);
                }
                ColorStateList colorStateList = this.A;
                if (colorStateList != null) {
                    this.c.setTextColor(colorStateList);
                }
            }
            if (!F(this.c)) {
                d(this.c, true);
            }
        } else {
            TextView textView = this.c;
            if (textView != null && F(textView)) {
                removeView(this.c);
                this.F.remove(this.c);
            }
        }
        TextView textView2 = this.c;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.y = charSequence;
    }

    public void a0(Context context, int i2) {
        this.m = i2;
        TextView textView = this.c;
        if (textView != null) {
            textView.setTextAppearance(context, i2);
        }
    }

    /* access modifiers changed from: package-private */
    public void b() {
        for (int size = this.F.size() - 1; size >= 0; size--) {
            addView(this.F.get(size));
        }
        this.F.clear();
    }

    public boolean c0() {
        ActionMenuView actionMenuView = this.b;
        return actionMenuView != null && actionMenuView.N();
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    public boolean e() {
        ActionMenuView actionMenuView;
        return getVisibility() == 0 && (actionMenuView = this.b) != null && actionMenuView.F();
    }

    public void f() {
        d dVar = this.L;
        i iVar = dVar == null ? null : dVar.c;
        if (iVar != null) {
            iVar.collapseActionView();
        }
    }

    public void g() {
        ActionMenuView actionMenuView = this.b;
        if (actionMenuView != null) {
            actionMenuView.x();
        }
    }

    /* access modifiers changed from: package-private */
    public void h() {
        if (this.i == null) {
            AppCompatImageButton appCompatImageButton = new AppCompatImageButton(getContext(), null, R.attr.uc);
            this.i = appCompatImageButton;
            appCompatImageButton.setImageDrawable(this.g);
            this.i.setContentDescription(this.h);
            LayoutParams l2 = generateDefaultLayoutParams();
            l2.a = 8388611 | (this.o & 112);
            l2.b = 2;
            this.i.setLayoutParams(l2);
            this.i.setOnClickListener(new c());
        }
    }

    /* access modifiers changed from: protected */
    /* renamed from: l */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    /* access modifiers changed from: protected */
    /* renamed from: m */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ActionBar.LayoutParams) {
            return new LayoutParams((ActionBar.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.P);
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.D = false;
        }
        if (!this.D) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.D = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.D = false;
        }
        return true;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:110:0x02b7 A[LOOP:0: B:109:0x02b5->B:110:0x02b7, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:113:0x02d9 A[LOOP:1: B:112:0x02d7->B:113:0x02d9, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:116:0x02fd A[LOOP:2: B:115:0x02fb->B:116:0x02fd, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:119:0x033e  */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x034e A[LOOP:3: B:123:0x034c->B:124:0x034e, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0061  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0078  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x008d  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0092  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x009c  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00a1  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00cc  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00e3  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0100  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0118  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x011b  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0133  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x0142  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0145  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0149  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x014c  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x017f  */
    /* JADX WARNING: Removed duplicated region for block: B:80:0x01bd  */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x01ce  */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x023d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onLayout(boolean r20, int r21, int r22, int r23, int r24) {
        /*
        // Method dump skipped, instructions count: 867
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        char c2;
        char c3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int[] iArr = this.G;
        boolean z2 = true;
        int i11 = 0;
        if (p0.b(this)) {
            c3 = 1;
            c2 = 0;
        } else {
            c3 = 0;
            c2 = 1;
        }
        if (b0(this.e)) {
            L(this.e, i2, 0, i3, 0, this.p);
            i6 = this.e.getMeasuredWidth() + r(this.e);
            i5 = Math.max(0, this.e.getMeasuredHeight() + B(this.e));
            i4 = View.combineMeasuredStates(0, this.e.getMeasuredState());
        } else {
            i6 = 0;
            i5 = 0;
            i4 = 0;
        }
        if (b0(this.i)) {
            L(this.i, i2, 0, i3, 0, this.p);
            i6 = this.i.getMeasuredWidth() + r(this.i);
            i5 = Math.max(i5, this.i.getMeasuredHeight() + B(this.i));
            i4 = View.combineMeasuredStates(i4, this.i.getMeasuredState());
        }
        int q2 = q();
        int max = Math.max(q2, i6) + 0;
        iArr[c3] = Math.max(0, q2 - i6);
        if (b0(this.b)) {
            L(this.b, i2, max, i3, 0, this.p);
            i7 = this.b.getMeasuredWidth() + r(this.b);
            i5 = Math.max(i5, this.b.getMeasuredHeight() + B(this.b));
            i4 = View.combineMeasuredStates(i4, this.b.getMeasuredState());
        } else {
            i7 = 0;
        }
        int p2 = p();
        int max2 = Math.max(p2, i7) + max;
        iArr[c2] = Math.max(0, p2 - i7);
        if (b0(this.j)) {
            max2 += K(this.j, i2, max2, i3, 0, iArr);
            i5 = Math.max(i5, this.j.getMeasuredHeight() + B(this.j));
            i4 = View.combineMeasuredStates(i4, this.j.getMeasuredState());
        }
        if (b0(this.f)) {
            max2 += K(this.f, i2, max2, i3, 0, iArr);
            i5 = Math.max(i5, this.f.getMeasuredHeight() + B(this.f));
            i4 = View.combineMeasuredStates(i4, this.f.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (((LayoutParams) childAt.getLayoutParams()).b == 0 && b0(childAt)) {
                max2 += K(childAt, i2, max2, i3, 0, iArr);
                i5 = Math.max(i5, childAt.getMeasuredHeight() + B(childAt));
                i4 = View.combineMeasuredStates(i4, childAt.getMeasuredState());
            }
        }
        int i13 = this.s + this.t;
        int i14 = this.q + this.r;
        if (b0(this.c)) {
            K(this.c, i2, max2 + i14, i3, i13, iArr);
            int measuredWidth = this.c.getMeasuredWidth() + r(this.c);
            i8 = this.c.getMeasuredHeight() + B(this.c);
            i10 = View.combineMeasuredStates(i4, this.c.getMeasuredState());
            i9 = measuredWidth;
        } else {
            i10 = i4;
            i9 = 0;
            i8 = 0;
        }
        if (b0(this.d)) {
            i9 = Math.max(i9, K(this.d, i2, max2 + i14, i3, i8 + i13, iArr));
            i8 = this.d.getMeasuredHeight() + B(this.d) + i8;
            i10 = View.combineMeasuredStates(i10, this.d.getMeasuredState());
        }
        int max3 = Math.max(i5, i8);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop() + max3;
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight + max2 + i9, getSuggestedMinimumWidth()), i2, -16777216 & i10);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i3, i10 << 16);
        if (this.O) {
            int childCount2 = getChildCount();
            int i15 = 0;
            while (true) {
                if (i15 >= childCount2) {
                    break;
                }
                View childAt2 = getChildAt(i15);
                if (b0(childAt2) && childAt2.getMeasuredWidth() > 0 && childAt2.getMeasuredHeight() > 0) {
                    break;
                }
                i15++;
            }
        }
        z2 = false;
        if (!z2) {
            i11 = resolveSizeAndState2;
        }
        setMeasuredDimension(resolveSizeAndState, i11);
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        ActionMenuView actionMenuView = this.b;
        g H2 = actionMenuView != null ? actionMenuView.H() : null;
        int i2 = savedState.d;
        if (!(i2 == 0 || this.L == null || H2 == null || (findItem = H2.findItem(i2)) == null)) {
            findItem.expandActionView();
        }
        if (savedState.e) {
            removeCallbacks(this.P);
            post(this.P);
        }
    }

    public void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        i();
        x xVar = this.u;
        boolean z2 = true;
        if (i2 != 1) {
            z2 = false;
        }
        xVar.d(z2);
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        i iVar;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        d dVar = this.L;
        if (!(dVar == null || (iVar = dVar.c) == null)) {
            savedState.d = iVar.getItemId();
        }
        ActionMenuView actionMenuView = this.b;
        savedState.e = actionMenuView != null && actionMenuView.E();
        return savedState;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.C = false;
        }
        if (!this.C) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.C = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.C = false;
        }
        return true;
    }

    public int p() {
        g H2;
        ActionMenuView actionMenuView = this.b;
        int i2 = 0;
        if ((actionMenuView == null || (H2 = actionMenuView.H()) == null || !H2.hasVisibleItems()) ? false : true) {
            x xVar = this.u;
            return Math.max(xVar != null ? xVar.a() : 0, Math.max(this.w, 0));
        }
        x xVar2 = this.u;
        if (xVar2 != null) {
            i2 = xVar2.a();
        }
        return i2;
    }

    public int q() {
        int i2 = 0;
        if (u() != null) {
            x xVar = this.u;
            return Math.max(xVar != null ? xVar.b() : 0, Math.max(this.v, 0));
        }
        x xVar2 = this.u;
        if (xVar2 != null) {
            i2 = xVar2.b();
        }
        return i2;
    }

    public Menu s() {
        j();
        if (this.b.H() == null) {
            g gVar = (g) this.b.A();
            if (this.L == null) {
                this.L = new d();
            }
            this.b.I(true);
            gVar.c(this.L, this.k);
        }
        return this.b.A();
    }

    public CharSequence t() {
        ImageButton imageButton = this.e;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable u() {
        ImageButton imageButton = this.e;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public CharSequence v() {
        return this.z;
    }

    public CharSequence w() {
        return this.y;
    }

    public int x() {
        return this.t;
    }

    public int y() {
        return this.r;
    }

    public int z() {
        return this.q;
    }

    public static class LayoutParams extends ActionBar.LayoutParams {
        int b = 0;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.a = 8388627;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ActionBar.LayoutParams) layoutParams);
            this.b = layoutParams.b;
        }

        public LayoutParams(ActionBar.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.x = 8388627;
        this.E = new ArrayList<>();
        this.F = new ArrayList<>();
        this.G = new int[2];
        this.I = new a();
        this.P = new b();
        i0 u2 = i0.u(getContext(), attributeSet, R$styleable.z, i2, 0);
        this.m = u2.n(28, 0);
        this.n = u2.n(19, 0);
        this.x = u2.l(0, this.x);
        this.o = u2.l(2, 48);
        int e2 = u2.e(22, 0);
        e2 = u2.r(27) ? u2.e(27, e2) : e2;
        this.t = e2;
        this.s = e2;
        this.r = e2;
        this.q = e2;
        int e3 = u2.e(25, -1);
        if (e3 >= 0) {
            this.q = e3;
        }
        int e4 = u2.e(24, -1);
        if (e4 >= 0) {
            this.r = e4;
        }
        int e5 = u2.e(26, -1);
        if (e5 >= 0) {
            this.s = e5;
        }
        int e6 = u2.e(23, -1);
        if (e6 >= 0) {
            this.t = e6;
        }
        this.p = u2.f(13, -1);
        int e7 = u2.e(9, RecyclerView.UNDEFINED_DURATION);
        int e8 = u2.e(5, RecyclerView.UNDEFINED_DURATION);
        int f2 = u2.f(7, 0);
        int f3 = u2.f(8, 0);
        i();
        this.u.c(f2, f3);
        if (!(e7 == Integer.MIN_VALUE && e8 == Integer.MIN_VALUE)) {
            this.u.e(e7, e8);
        }
        this.v = u2.e(10, RecyclerView.UNDEFINED_DURATION);
        this.w = u2.e(6, RecyclerView.UNDEFINED_DURATION);
        this.g = u2.g(4);
        this.h = u2.p(3);
        CharSequence p2 = u2.p(21);
        if (!TextUtils.isEmpty(p2)) {
            Z(p2);
        }
        CharSequence p3 = u2.p(18);
        if (!TextUtils.isEmpty(p3)) {
            X(p3);
        }
        this.k = getContext();
        W(u2.n(17, 0));
        Drawable g2 = u2.g(16);
        if (g2 != null) {
            T(g2);
        }
        CharSequence p4 = u2.p(15);
        if (!TextUtils.isEmpty(p4)) {
            S(p4);
        }
        Drawable g3 = u2.g(11);
        if (g3 != null) {
            P(g3);
        }
        CharSequence p5 = u2.p(12);
        if (!TextUtils.isEmpty(p5)) {
            if (!TextUtils.isEmpty(p5) && this.f == null) {
                this.f = new AppCompatImageView(getContext(), null);
            }
            ImageView imageView = this.f;
            if (imageView != null) {
                imageView.setContentDescription(p5);
            }
        }
        if (u2.r(29)) {
            ColorStateList c2 = u2.c(29);
            this.A = c2;
            TextView textView = this.c;
            if (textView != null) {
                textView.setTextColor(c2);
            }
        }
        if (u2.r(20)) {
            ColorStateList c3 = u2.c(20);
            this.B = c3;
            TextView textView2 = this.d;
            if (textView2 != null) {
                textView2.setTextColor(c3);
            }
        }
        if (u2.r(14)) {
            new p(getContext()).inflate(u2.n(14, 0), s());
        }
        u2.v();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        int d;
        boolean e;

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
            this.d = parcel.readInt();
            this.e = parcel.readInt() != 0;
        }

        @Override // androidx.customview.view.AbsSavedState
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.d);
            parcel.writeInt(this.e ? 1 : 0);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }
}
