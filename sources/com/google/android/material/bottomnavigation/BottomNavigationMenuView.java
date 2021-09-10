package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.n;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.AutoTransition;
import androidx.transition.TransitionSet;
import androidx.transition.t;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.h;
import java.util.HashSet;
import photoeditor.cutout.backgrounderaser.R;

public class BottomNavigationMenuView extends ViewGroup implements n {
    private static final int[] A = {16842912};
    private static final int[] B = {-16842910};
    private final TransitionSet b;
    private final int c;
    private final int d;
    private final int e;
    private final int f;
    private final int g;
    private final View.OnClickListener h;
    private final k2<BottomNavigationItemView> i = new m2(5);
    private boolean j;
    private int k;
    private BottomNavigationItemView[] l;
    private int m = 0;
    private int n = 0;
    private ColorStateList o;
    private int p;
    private ColorStateList q;
    private final ColorStateList r;
    private int s;
    private int t;
    private Drawable u;
    private int v;
    private int[] w;
    private SparseArray<BadgeDrawable> x = new SparseArray<>(5);
    private BottomNavigationPresenter y;
    private g z;

    class a implements View.OnClickListener {
        a() {
        }

        public void onClick(View view) {
            i c = ((BottomNavigationItemView) view).c();
            if (!BottomNavigationMenuView.this.z.z(c, BottomNavigationMenuView.this.y, 0)) {
                c.setChecked(true);
            }
        }
    }

    public BottomNavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Resources resources = getResources();
        this.c = resources.getDimensionPixelSize(R.dimen.mr);
        this.d = resources.getDimensionPixelSize(R.dimen.ms);
        this.e = resources.getDimensionPixelSize(R.dimen.ml);
        this.f = resources.getDimensionPixelSize(R.dimen.mm);
        this.g = resources.getDimensionPixelSize(R.dimen.mp);
        this.r = e(16842808);
        AutoTransition autoTransition = new AutoTransition();
        this.b = autoTransition;
        autoTransition.V(0);
        autoTransition.T(115);
        autoTransition.K(new x3());
        autoTransition.Q(new h());
        this.h = new a();
        this.w = new int[5];
    }

    private boolean k(int i2, int i3) {
        if (i2 == -1) {
            if (i3 > 3) {
                return true;
            }
        } else if (i2 == 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.n
    public void b(g gVar) {
        this.z = gVar;
    }

    public void d() {
        BadgeDrawable badgeDrawable;
        removeAllViews();
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.l;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                if (bottomNavigationItemView != null) {
                    this.i.a(bottomNavigationItemView);
                    bottomNavigationItemView.g();
                }
            }
        }
        if (this.z.size() == 0) {
            this.m = 0;
            this.n = 0;
            this.l = null;
            return;
        }
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < this.z.size(); i2++) {
            hashSet.add(Integer.valueOf(this.z.getItem(i2).getItemId()));
        }
        for (int i3 = 0; i3 < this.x.size(); i3++) {
            int keyAt = this.x.keyAt(i3);
            if (!hashSet.contains(Integer.valueOf(keyAt))) {
                this.x.delete(keyAt);
            }
        }
        this.l = new BottomNavigationItemView[this.z.size()];
        boolean k2 = k(this.k, this.z.r().size());
        int i4 = 0;
        while (true) {
            boolean z2 = true;
            if (i4 < this.z.size()) {
                this.y.m(true);
                this.z.getItem(i4).setCheckable(true);
                this.y.m(false);
                BottomNavigationItemView b2 = this.i.b();
                if (b2 == null) {
                    b2 = new BottomNavigationItemView(getContext(), null);
                }
                this.l[i4] = b2;
                b2.m(this.o);
                b2.l(this.p);
                b2.s(this.r);
                b2.r(this.s);
                b2.q(this.t);
                b2.s(this.q);
                Drawable drawable = this.u;
                if (drawable != null) {
                    b2.n(drawable);
                } else {
                    int i5 = this.v;
                    b2.n(i5 == 0 ? null : androidx.core.content.a.c(b2.getContext(), i5));
                }
                b2.p(k2);
                b2.o(this.k);
                b2.k((i) this.z.getItem(i4), 0);
                b2.setOnClickListener(this.h);
                if (this.m != 0 && this.z.getItem(i4).getItemId() == this.m) {
                    this.n = i4;
                }
                int id = b2.getId();
                if (id == -1) {
                    z2 = false;
                }
                if (z2 && (badgeDrawable = this.x.get(id)) != null) {
                    b2.h(badgeDrawable);
                }
                addView(b2);
                i4++;
            } else {
                int min = Math.min(this.z.size() - 1, this.n);
                this.n = min;
                this.z.getItem(min).setChecked(true);
                return;
            }
        }
    }

    public ColorStateList e(int i2) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i2, typedValue, true)) {
            return null;
        }
        ColorStateList a2 = d.a(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(R.attr.ea, typedValue, true)) {
            return null;
        }
        int i3 = typedValue.data;
        int defaultColor = a2.getDefaultColor();
        int[] iArr = B;
        return new ColorStateList(new int[][]{iArr, A, ViewGroup.EMPTY_STATE_SET}, new int[]{a2.getColorForState(iArr, defaultColor), i3, defaultColor});
    }

    /* access modifiers changed from: package-private */
    public SparseArray<BadgeDrawable> f() {
        return this.x;
    }

    public Drawable g() {
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.l;
        if (bottomNavigationItemViewArr == null || bottomNavigationItemViewArr.length <= 0) {
            return this.u;
        }
        return bottomNavigationItemViewArr[0].getBackground();
    }

    public int h() {
        return this.k;
    }

    public int i() {
        return this.m;
    }

    public boolean j() {
        return this.j;
    }

    /* access modifiers changed from: package-private */
    public void l(SparseArray<BadgeDrawable> sparseArray) {
        this.x = sparseArray;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.l;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.h(sparseArray.get(bottomNavigationItemView.getId()));
            }
        }
    }

    public void m(ColorStateList colorStateList) {
        this.o = colorStateList;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.l;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.m(colorStateList);
            }
        }
    }

    public void n(Drawable drawable) {
        this.u = drawable;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.l;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.n(drawable);
            }
        }
    }

    public void o(int i2) {
        Drawable drawable;
        this.v = i2;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.l;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                if (i2 == 0) {
                    drawable = null;
                } else {
                    drawable = androidx.core.content.a.c(bottomNavigationItemView.getContext(), i2);
                }
                bottomNavigationItemView.n(drawable);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                int i10 = c3.g;
                if (getLayoutDirection() == 1) {
                    int i11 = i6 - i8;
                    childAt.layout(i11 - childAt.getMeasuredWidth(), 0, i11, i7);
                } else {
                    childAt.layout(i8, 0, childAt.getMeasuredWidth() + i8, i7);
                }
                i8 += childAt.getMeasuredWidth();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        int size = View.MeasureSpec.getSize(i2);
        int size2 = this.z.r().size();
        int childCount = getChildCount();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.g, 1073741824);
        if (!k(this.k, size2) || !this.j) {
            int min = Math.min(size / (size2 == 0 ? 1 : size2), this.e);
            int i4 = size - (size2 * min);
            for (int i5 = 0; i5 < childCount; i5++) {
                if (getChildAt(i5).getVisibility() != 8) {
                    int[] iArr = this.w;
                    iArr[i5] = min;
                    if (i4 > 0) {
                        iArr[i5] = iArr[i5] + 1;
                        i4--;
                    }
                } else {
                    this.w[i5] = 0;
                }
            }
        } else {
            View childAt = getChildAt(this.n);
            int i6 = this.f;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.e, RecyclerView.UNDEFINED_DURATION), makeMeasureSpec);
                i6 = Math.max(i6, childAt.getMeasuredWidth());
            }
            int i7 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int min2 = Math.min(size - (this.d * i7), Math.min(i6, this.e));
            int i8 = size - min2;
            int min3 = Math.min(i8 / (i7 == 0 ? 1 : i7), this.c);
            int i9 = i8 - (i7 * min3);
            int i10 = 0;
            while (i10 < childCount) {
                if (getChildAt(i10).getVisibility() != 8) {
                    int[] iArr2 = this.w;
                    iArr2[i10] = i10 == this.n ? min2 : min3;
                    if (i9 > 0) {
                        iArr2[i10] = iArr2[i10] + 1;
                        i9--;
                    }
                } else {
                    this.w[i10] = 0;
                }
                i10++;
            }
        }
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt2 = getChildAt(i12);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.w[i12], 1073741824), makeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                i11 += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(i11, View.MeasureSpec.makeMeasureSpec(i11, 1073741824), 0), View.resolveSizeAndState(this.g, makeMeasureSpec, 0));
    }

    public void p(boolean z2) {
        this.j = z2;
    }

    public void q(int i2) {
        this.p = i2;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.l;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.l(i2);
            }
        }
    }

    public void r(int i2) {
        this.t = i2;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.l;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.q(i2);
                ColorStateList colorStateList = this.q;
                if (colorStateList != null) {
                    bottomNavigationItemView.s(colorStateList);
                }
            }
        }
    }

    public void s(int i2) {
        this.s = i2;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.l;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.r(i2);
                ColorStateList colorStateList = this.q;
                if (colorStateList != null) {
                    bottomNavigationItemView.s(colorStateList);
                }
            }
        }
    }

    public void t(ColorStateList colorStateList) {
        this.q = colorStateList;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.l;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.s(colorStateList);
            }
        }
    }

    public void u(int i2) {
        this.k = i2;
    }

    public void v(BottomNavigationPresenter bottomNavigationPresenter) {
        this.y = bottomNavigationPresenter;
    }

    /* access modifiers changed from: package-private */
    public void w(int i2) {
        int size = this.z.size();
        for (int i3 = 0; i3 < size; i3++) {
            MenuItem item = this.z.getItem(i3);
            if (i2 == item.getItemId()) {
                this.m = i2;
                this.n = i3;
                item.setChecked(true);
                return;
            }
        }
    }

    public void x() {
        g gVar = this.z;
        if (!(gVar == null || this.l == null)) {
            int size = gVar.size();
            if (size != this.l.length) {
                d();
                return;
            }
            int i2 = this.m;
            for (int i3 = 0; i3 < size; i3++) {
                MenuItem item = this.z.getItem(i3);
                if (item.isChecked()) {
                    this.m = item.getItemId();
                    this.n = i3;
                }
            }
            if (i2 != this.m) {
                t.a(this, this.b);
            }
            boolean k2 = k(this.k, this.z.r().size());
            for (int i4 = 0; i4 < size; i4++) {
                this.y.m(true);
                this.l[i4].o(this.k);
                this.l[i4].p(k2);
                this.l[i4].k((i) this.z.getItem(i4), 0);
                this.y.m(false);
            }
        }
    }
}
