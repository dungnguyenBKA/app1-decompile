package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.l;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.view.menu.p;
import androidx.appcompat.view.menu.r;
import androidx.appcompat.widget.ActionMenuView;
import defpackage.o2;
import java.util.ArrayList;
import photoeditor.cutout.backgrounderaser.R;

/* access modifiers changed from: package-private */
public class ActionMenuPresenter extends androidx.appcompat.view.menu.b implements o2.a {
    d k;
    private boolean l;
    private boolean m;
    private int n;
    private int o;
    private int p;
    private boolean q;
    private int r;
    private final SparseBooleanArray s = new SparseBooleanArray();
    e t;
    a u;
    c v;
    private b w;
    final f x = new f();
    int y;

    @SuppressLint({"BanParcelableUsage"})
    private static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public int b;

        static class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* Return type fixed from 'java.lang.Object[]' to match base method */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        SavedState() {
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.b);
        }

        SavedState(Parcel parcel) {
            this.b = parcel.readInt();
        }
    }

    /* access modifiers changed from: private */
    public class a extends l {
        public a(Context context, r rVar, View view) {
            super(context, rVar, view, false, R.attr.a4, 0);
            if (!((i) rVar.getItem()).k()) {
                View view2 = ActionMenuPresenter.this.k;
                e(view2 == null ? (View) ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).i : view2);
            }
            i(ActionMenuPresenter.this.x);
        }

        /* access modifiers changed from: protected */
        @Override // androidx.appcompat.view.menu.l
        public void d() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            actionMenuPresenter.u = null;
            actionMenuPresenter.y = 0;
            super.d();
        }
    }

    private class b extends ActionMenuItemView.b {
        b() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.b
        public p a() {
            a aVar = ActionMenuPresenter.this.u;
            if (aVar != null) {
                return aVar.b();
            }
            return null;
        }
    }

    /* access modifiers changed from: private */
    public class c implements Runnable {
        private e b;

        public c(e eVar) {
            this.b = eVar;
        }

        public void run() {
            if (((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).d != null) {
                ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).d.d();
            }
            View view = (View) ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).i;
            if (!(view == null || view.getWindowToken() == null || !this.b.k())) {
                ActionMenuPresenter.this.t = this.b;
            }
            ActionMenuPresenter.this.v = null;
        }
    }

    /* access modifiers changed from: private */
    public class d extends AppCompatImageView implements ActionMenuView.a {

        class a extends r {
            a(View view, ActionMenuPresenter actionMenuPresenter) {
                super(view);
            }

            @Override // androidx.appcompat.widget.r
            public p b() {
                e eVar = ActionMenuPresenter.this.t;
                if (eVar == null) {
                    return null;
                }
                return eVar.b();
            }

            @Override // androidx.appcompat.widget.r
            public boolean c() {
                ActionMenuPresenter.this.E();
                return true;
            }

            @Override // androidx.appcompat.widget.r
            public boolean d() {
                ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
                if (actionMenuPresenter.v != null) {
                    return false;
                }
                actionMenuPresenter.y();
                return true;
            }
        }

        public d(Context context) {
            super(context, null, R.attr.a3);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            l0.b(this, getContentDescription());
            setOnTouchListener(new a(this, ActionMenuPresenter.this));
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean b() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean e() {
            return false;
        }

        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.E();
            return true;
        }

        /* access modifiers changed from: protected */
        public boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (!(drawable == null || background == null)) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                androidx.core.graphics.drawable.a.d(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* access modifiers changed from: private */
    public class e extends l {
        public e(Context context, g gVar, View view, boolean z) {
            super(context, gVar, view, z, R.attr.a4, 0);
            g(8388613);
            i(ActionMenuPresenter.this.x);
        }

        /* access modifiers changed from: protected */
        @Override // androidx.appcompat.view.menu.l
        public void d() {
            if (((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).d != null) {
                ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).d.e(true);
            }
            ActionMenuPresenter.this.t = null;
            super.d();
        }
    }

    private class f implements m.a {
        f() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void b(g gVar, boolean z) {
            if (gVar instanceof r) {
                gVar.q().e(false);
            }
            m.a m = ActionMenuPresenter.this.m();
            if (m != null) {
                m.b(gVar, z);
            }
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean c(g gVar) {
            if (gVar == null) {
                return false;
            }
            ActionMenuPresenter.this.y = ((i) ((r) gVar).getItem()).getItemId();
            m.a m = ActionMenuPresenter.this.m();
            if (m != null) {
                return m.c(gVar);
            }
            return false;
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, R.layout.d, R.layout.c);
    }

    public void A() {
        this.p = j.b(this.c).d();
        g gVar = this.d;
        if (gVar != null) {
            gVar.x(true);
        }
    }

    public void B(boolean z) {
        this.q = z;
    }

    public void C(ActionMenuView actionMenuView) {
        this.i = actionMenuView;
        actionMenuView.b(this.d);
    }

    public void D(boolean z) {
        this.l = z;
        this.m = true;
    }

    public boolean E() {
        g gVar;
        if (!this.l || z() || (gVar = this.d) == null || this.i == null || this.v != null || gVar.p().isEmpty()) {
            return false;
        }
        c cVar = new c(new e(this.c, this.d, this.k, true));
        this.v = cVar;
        ((View) this.i).post(cVar);
        super.j(null);
        return true;
    }

    @Override // androidx.appcompat.view.menu.b
    public void a(i iVar, n.a aVar) {
        aVar.k(iVar, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.m((ActionMenuView) this.i);
        if (this.w == null) {
            this.w = new b();
        }
        actionMenuItemView.n(this.w);
    }

    @Override // androidx.appcompat.view.menu.m, androidx.appcompat.view.menu.b
    public void b(g gVar, boolean z) {
        x();
        super.b(gVar, z);
    }

    @Override // androidx.appcompat.view.menu.m, androidx.appcompat.view.menu.b
    public void c(boolean z) {
        n nVar;
        super.c(z);
        ((View) this.i).requestLayout();
        g gVar = this.d;
        boolean z2 = false;
        if (gVar != null) {
            ArrayList<i> l2 = gVar.l();
            int size = l2.size();
            for (int i = 0; i < size; i++) {
                o2 b2 = l2.get(i).b();
                if (b2 != null) {
                    b2.i(this);
                }
            }
        }
        g gVar2 = this.d;
        ArrayList<i> p2 = gVar2 != null ? gVar2.p() : null;
        if (this.l && p2 != null) {
            int size2 = p2.size();
            if (size2 == 1) {
                z2 = !p2.get(0).isActionViewExpanded();
            } else if (size2 > 0) {
                z2 = true;
            }
        }
        if (z2) {
            if (this.k == null) {
                this.k = new d(this.b);
            }
            ViewGroup viewGroup = (ViewGroup) this.k.getParent();
            if (viewGroup != this.i) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.k);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.i;
                d dVar = this.k;
                ActionMenuView.LayoutParams y2 = actionMenuView.i();
                y2.c = true;
                actionMenuView.addView(dVar, y2);
            }
        } else {
            d dVar2 = this.k;
            if (dVar2 != null && dVar2.getParent() == (nVar = this.i)) {
                ((ViewGroup) nVar).removeView(this.k);
            }
        }
        ((ActionMenuView) this.i).K(this.l);
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean d() {
        int i;
        ArrayList<i> arrayList;
        boolean z;
        g gVar = this.d;
        View view = null;
        if (gVar != null) {
            arrayList = gVar.r();
            i = arrayList.size();
        } else {
            arrayList = null;
            i = 0;
        }
        int i2 = this.p;
        int i3 = this.o;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.i;
        int i4 = 0;
        boolean z2 = false;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            z = true;
            if (i4 >= i) {
                break;
            }
            i iVar = arrayList.get(i4);
            if (iVar.n()) {
                i5++;
            } else if (iVar.m()) {
                i6++;
            } else {
                z2 = true;
            }
            if (this.q && iVar.isActionViewExpanded()) {
                i2 = 0;
            }
            i4++;
        }
        if (this.l && (z2 || i6 + i5 > i2)) {
            i2--;
        }
        int i7 = i2 - i5;
        SparseBooleanArray sparseBooleanArray = this.s;
        sparseBooleanArray.clear();
        int i8 = 0;
        int i9 = 0;
        while (i8 < i) {
            i iVar2 = arrayList.get(i8);
            if (iVar2.n()) {
                View n2 = n(iVar2, view, viewGroup);
                n2.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredWidth = n2.getMeasuredWidth();
                i3 -= measuredWidth;
                if (i9 == 0) {
                    i9 = measuredWidth;
                }
                int groupId = iVar2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, z);
                }
                iVar2.s(z);
            } else if (iVar2.m()) {
                int groupId2 = iVar2.getGroupId();
                boolean z3 = sparseBooleanArray.get(groupId2);
                boolean z4 = (i7 > 0 || z3) && i3 > 0;
                if (z4) {
                    View n3 = n(iVar2, view, viewGroup);
                    n3.measure(makeMeasureSpec, makeMeasureSpec);
                    int measuredWidth2 = n3.getMeasuredWidth();
                    i3 -= measuredWidth2;
                    if (i9 == 0) {
                        i9 = measuredWidth2;
                    }
                    z4 &= i3 + i9 > 0;
                }
                if (z4 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, z);
                } else if (z3) {
                    sparseBooleanArray.put(groupId2, false);
                    for (int i10 = 0; i10 < i8; i10++) {
                        i iVar3 = arrayList.get(i10);
                        if (iVar3.getGroupId() == groupId2) {
                            if (iVar3.k()) {
                                i7++;
                            }
                            iVar3.s(false);
                        }
                    }
                }
                if (z4) {
                    i7--;
                }
                iVar2.s(z4);
            } else {
                iVar2.s(false);
                i8++;
                view = null;
                z = true;
            }
            i8++;
            view = null;
            z = true;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.m, androidx.appcompat.view.menu.b
    public void h(Context context, g gVar) {
        super.h(context, gVar);
        Resources resources = context.getResources();
        j b2 = j.b(context);
        if (!this.m) {
            this.l = true;
        }
        this.n = b2.c();
        this.p = b2.d();
        int i = this.n;
        if (this.l) {
            if (this.k == null) {
                this.k = new d(this.b);
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.k.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i -= this.k.getMeasuredWidth();
        } else {
            this.k = null;
        }
        this.o = i;
        this.r = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    @Override // androidx.appcompat.view.menu.m
    public void i(Parcelable parcelable) {
        int i;
        MenuItem findItem;
        if ((parcelable instanceof SavedState) && (i = ((SavedState) parcelable).b) > 0 && (findItem = this.d.findItem(i)) != null) {
            j((r) findItem.getSubMenu());
        }
    }

    @Override // androidx.appcompat.view.menu.m, androidx.appcompat.view.menu.b
    public boolean j(r rVar) {
        boolean z = false;
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        r rVar2 = rVar;
        while (rVar2.S() != this.d) {
            rVar2 = (r) rVar2.S();
        }
        MenuItem item = rVar2.getItem();
        ViewGroup viewGroup = (ViewGroup) this.i;
        View view = null;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                View childAt = viewGroup.getChildAt(i);
                if ((childAt instanceof n.a) && ((n.a) childAt).c() == item) {
                    view = childAt;
                    break;
                }
                i++;
            }
        }
        if (view == null) {
            return false;
        }
        this.y = ((i) rVar.getItem()).getItemId();
        int size = rVar.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            MenuItem item2 = rVar.getItem(i2);
            if (item2.isVisible() && item2.getIcon() != null) {
                z = true;
                break;
            }
            i2++;
        }
        a aVar = new a(this.c, rVar, view);
        this.u = aVar;
        aVar.f(z);
        if (this.u.k()) {
            super.j(rVar);
            return true;
        }
        throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
    }

    @Override // androidx.appcompat.view.menu.m
    public Parcelable k() {
        SavedState savedState = new SavedState();
        savedState.b = this.y;
        return savedState;
    }

    @Override // androidx.appcompat.view.menu.b
    public boolean l(ViewGroup viewGroup, int i) {
        if (viewGroup.getChildAt(i) == this.k) {
            return false;
        }
        viewGroup.removeViewAt(i);
        return true;
    }

    @Override // androidx.appcompat.view.menu.b
    public View n(i iVar, View view, ViewGroup viewGroup) {
        View actionView = iVar.getActionView();
        if (actionView == null || iVar.i()) {
            actionView = super.n(iVar, view, viewGroup);
        }
        actionView.setVisibility(iVar.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.l(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.b
    public n o(ViewGroup viewGroup) {
        n nVar = this.i;
        n o2 = super.o(viewGroup);
        if (nVar != o2) {
            ((ActionMenuView) o2).M(this);
        }
        return o2;
    }

    @Override // androidx.appcompat.view.menu.b
    public boolean q(int i, i iVar) {
        return iVar.k();
    }

    public boolean x() {
        boolean z;
        boolean y2 = y();
        a aVar = this.u;
        if (aVar != null) {
            aVar.a();
            z = true;
        } else {
            z = false;
        }
        return y2 | z;
    }

    public boolean y() {
        n nVar;
        c cVar = this.v;
        if (cVar == null || (nVar = this.i) == null) {
            e eVar = this.t;
            if (eVar == null) {
                return false;
            }
            eVar.a();
            return true;
        }
        ((View) nVar).removeCallbacks(cVar);
        this.v = null;
        return true;
    }

    public boolean z() {
        e eVar = this.t;
        return eVar != null && eVar.c();
    }
}
