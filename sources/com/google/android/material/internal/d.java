package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.view.menu.r;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.y;
import defpackage.n3;
import java.util.ArrayList;
import photoeditor.cutout.backgrounderaser.R;

public class d implements m {
    private NavigationMenuView b;
    LinearLayout c;
    androidx.appcompat.view.menu.g d;
    private int e;
    c f;
    LayoutInflater g;
    int h;
    boolean i;
    ColorStateList j;
    ColorStateList k;
    Drawable l;
    int m;
    int n;
    int o;
    boolean p;
    boolean q = true;
    private int r;
    private int s;
    int t;
    private int u = -1;
    final View.OnClickListener v = new a();

    class a implements View.OnClickListener {
        a() {
        }

        public void onClick(View view) {
            boolean z = true;
            d.this.z(true);
            androidx.appcompat.view.menu.i c = ((NavigationMenuItemView) view).c();
            d dVar = d.this;
            boolean z2 = dVar.d.z(c, dVar, 0);
            if (c == null || !c.isCheckable() || !z2) {
                z = false;
            } else {
                d.this.f.C(c);
            }
            d.this.z(false);
            if (z) {
                d.this.c(false);
            }
        }
    }

    private static class b extends l {
        public b(View view) {
            super(view);
        }
    }

    /* access modifiers changed from: private */
    public class c extends RecyclerView.g<l> {
        private final ArrayList<e> c = new ArrayList<>();
        private androidx.appcompat.view.menu.i d;
        private boolean e;

        c() {
            A();
        }

        private void A() {
            if (!this.e) {
                this.e = true;
                this.c.clear();
                this.c.add(new C0079d());
                int i = -1;
                int size = d.this.d.r().size();
                boolean z = false;
                int i2 = 0;
                boolean z2 = false;
                int i3 = 0;
                while (i2 < size) {
                    androidx.appcompat.view.menu.i iVar = d.this.d.r().get(i2);
                    if (iVar.isChecked()) {
                        C(iVar);
                    }
                    if (iVar.isCheckable()) {
                        iVar.r(z);
                    }
                    if (iVar.hasSubMenu()) {
                        androidx.appcompat.view.menu.g gVar = (androidx.appcompat.view.menu.g) iVar.getSubMenu();
                        if (gVar.hasVisibleItems()) {
                            if (i2 != 0) {
                                ArrayList<e> arrayList = this.c;
                                int i4 = d.this.t;
                                int i5 = z ? 1 : 0;
                                int i6 = z ? 1 : 0;
                                int i7 = z ? 1 : 0;
                                int i8 = z ? 1 : 0;
                                arrayList.add(new f(i4, i5));
                            }
                            this.c.add(new g(iVar));
                            int size2 = gVar.size();
                            int i9 = 0;
                            boolean z3 = false;
                            while (i9 < size2) {
                                androidx.appcompat.view.menu.i iVar2 = (androidx.appcompat.view.menu.i) gVar.getItem(i9);
                                if (iVar2.isVisible()) {
                                    if (!z3 && iVar2.getIcon() != null) {
                                        z3 = true;
                                    }
                                    if (iVar2.isCheckable()) {
                                        iVar2.r(z);
                                    }
                                    if (iVar.isChecked()) {
                                        C(iVar);
                                    }
                                    this.c.add(new g(iVar2));
                                }
                                i9++;
                                z = false;
                            }
                            if (z3) {
                                int size3 = this.c.size();
                                for (int size4 = this.c.size(); size4 < size3; size4++) {
                                    ((g) this.c.get(size4)).b = true;
                                }
                            }
                        }
                    } else {
                        int groupId = iVar.getGroupId();
                        if (groupId != i) {
                            i3 = this.c.size();
                            z2 = iVar.getIcon() != null;
                            if (i2 != 0) {
                                i3++;
                                ArrayList<e> arrayList2 = this.c;
                                int i10 = d.this.t;
                                arrayList2.add(new f(i10, i10));
                            }
                        } else if (!z2 && iVar.getIcon() != null) {
                            int size5 = this.c.size();
                            for (int i11 = i3; i11 < size5; i11++) {
                                ((g) this.c.get(i11)).b = true;
                            }
                            z2 = true;
                        }
                        g gVar2 = new g(iVar);
                        gVar2.b = z2;
                        this.c.add(gVar2);
                        i = groupId;
                    }
                    i2++;
                    z = false;
                }
                this.e = false;
            }
        }

        public void B(Bundle bundle) {
            androidx.appcompat.view.menu.i a;
            View actionView;
            ParcelableSparseArray parcelableSparseArray;
            androidx.appcompat.view.menu.i a2;
            int i = bundle.getInt("android:menu:checked", 0);
            if (i != 0) {
                this.e = true;
                int size = this.c.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    e eVar = this.c.get(i2);
                    if ((eVar instanceof g) && (a2 = ((g) eVar).a()) != null && a2.getItemId() == i) {
                        C(a2);
                        break;
                    }
                    i2++;
                }
                this.e = false;
                A();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:action_views");
            if (sparseParcelableArray != null) {
                int size2 = this.c.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    e eVar2 = this.c.get(i3);
                    if (!(!(eVar2 instanceof g) || (a = ((g) eVar2).a()) == null || (actionView = a.getActionView()) == null || (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray.get(a.getItemId())) == null)) {
                        actionView.restoreHierarchyState(parcelableSparseArray);
                    }
                }
            }
        }

        public void C(androidx.appcompat.view.menu.i iVar) {
            if (this.d != iVar && iVar.isCheckable()) {
                androidx.appcompat.view.menu.i iVar2 = this.d;
                if (iVar2 != null) {
                    iVar2.setChecked(false);
                }
                this.d = iVar;
                iVar.setChecked(true);
            }
        }

        public void D(boolean z) {
            this.e = z;
        }

        public void E() {
            A();
            f();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public int b() {
            return this.c.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public long c(int i) {
            return (long) i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public int d(int i) {
            e eVar = this.c.get(i);
            if (eVar instanceof f) {
                return 2;
            }
            if (eVar instanceof C0079d) {
                return 3;
            }
            if (eVar instanceof g) {
                return ((g) eVar).a().hasSubMenu() ? 1 : 0;
            }
            throw new RuntimeException("Unknown item type.");
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [androidx.recyclerview.widget.RecyclerView$b0, int] */
        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void q(l lVar, int i) {
            l lVar2 = lVar;
            int d2 = d(i);
            if (d2 == 0) {
                NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) lVar2.itemView;
                navigationMenuItemView.B(d.this.k);
                d dVar = d.this;
                if (dVar.i) {
                    navigationMenuItemView.E(dVar.h);
                }
                ColorStateList colorStateList = d.this.j;
                if (colorStateList != null) {
                    navigationMenuItemView.F(colorStateList);
                }
                Drawable drawable = d.this.l;
                Drawable newDrawable = drawable != null ? drawable.getConstantState().newDrawable() : null;
                int i2 = c3.g;
                navigationMenuItemView.setBackground(newDrawable);
                g gVar = (g) this.c.get(i);
                navigationMenuItemView.D(gVar.b);
                int i3 = d.this.m;
                navigationMenuItemView.setPadding(i3, 0, i3, 0);
                navigationMenuItemView.z(d.this.n);
                d dVar2 = d.this;
                if (dVar2.p) {
                    navigationMenuItemView.A(dVar2.o);
                }
                navigationMenuItemView.C(d.this.r);
                navigationMenuItemView.k(gVar.a(), 0);
            } else if (d2 == 1) {
                ((TextView) lVar2.itemView).setText(((g) this.c.get(i)).a().getTitle());
            } else if (d2 == 2) {
                f fVar = (f) this.c.get(i);
                lVar2.itemView.setPadding(0, fVar.b(), 0, fVar.a());
            }
        }

        /* Return type fixed from 'androidx.recyclerview.widget.RecyclerView$b0' to match base method */
        @Override // androidx.recyclerview.widget.RecyclerView.g
        public l s(ViewGroup viewGroup, int i) {
            RecyclerView.b0 b0Var;
            if (i == 0) {
                d dVar = d.this;
                b0Var = new i(dVar.g, viewGroup, dVar.v);
            } else if (i == 1) {
                b0Var = new k(d.this.g, viewGroup);
            } else if (i == 2) {
                b0Var = new j(d.this.g, viewGroup);
            } else if (i != 3) {
                return null;
            } else {
                return new b(d.this.c);
            }
            return b0Var;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [androidx.recyclerview.widget.RecyclerView$b0] */
        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void v(l lVar) {
            l lVar2 = lVar;
            if (lVar2 instanceof i) {
                ((NavigationMenuItemView) lVar2.itemView).x();
            }
        }

        public Bundle z() {
            Bundle bundle = new Bundle();
            androidx.appcompat.view.menu.i iVar = this.d;
            if (iVar != null) {
                bundle.putInt("android:menu:checked", iVar.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                e eVar = this.c.get(i);
                if (eVar instanceof g) {
                    androidx.appcompat.view.menu.i a = ((g) eVar).a();
                    View actionView = a != null ? a.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(a.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:action_views", sparseArray);
            return bundle;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: com.google.android.material.internal.d$d  reason: collision with other inner class name */
    public static class C0079d implements e {
        C0079d() {
        }
    }

    /* access modifiers changed from: private */
    public interface e {
    }

    /* access modifiers changed from: private */
    public static class f implements e {
        private final int a;
        private final int b;

        public f(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        public int a() {
            return this.b;
        }

        public int b() {
            return this.a;
        }
    }

    /* access modifiers changed from: private */
    public static class g implements e {
        private final androidx.appcompat.view.menu.i a;
        boolean b;

        g(androidx.appcompat.view.menu.i iVar) {
            this.a = iVar;
        }

        public androidx.appcompat.view.menu.i a() {
            return this.a;
        }
    }

    private class h extends y {
        h(RecyclerView recyclerView) {
            super(recyclerView);
        }

        @Override // defpackage.n2, androidx.recyclerview.widget.y
        public void e(View view, n3 n3Var) {
            super.e(view, n3Var);
            c cVar = d.this.f;
            int i = d.this.c.getChildCount() == 0 ? 0 : 1;
            for (int i2 = 0; i2 < d.this.f.b(); i2++) {
                if (d.this.f.d(i2) == 0) {
                    i++;
                }
            }
            n3Var.T(n3.b.a(i, 0, false));
        }
    }

    private static class i extends l {
        public i(LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(R.layout.av, viewGroup, false));
            this.itemView.setOnClickListener(onClickListener);
        }
    }

    private static class j extends l {
        public j(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R.layout.ax, viewGroup, false));
        }
    }

    private static class k extends l {
        public k(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R.layout.ay, viewGroup, false));
        }
    }

    private static abstract class l extends RecyclerView.b0 {
        public l(View view) {
            super(view);
        }
    }

    private void A() {
        int i2 = (this.c.getChildCount() != 0 || !this.q) ? 0 : this.s;
        NavigationMenuView navigationMenuView = this.b;
        navigationMenuView.setPadding(0, i2, 0, navigationMenuView.getPaddingBottom());
    }

    @Override // androidx.appcompat.view.menu.m
    public void b(androidx.appcompat.view.menu.g gVar, boolean z) {
    }

    @Override // androidx.appcompat.view.menu.m
    public void c(boolean z) {
        c cVar = this.f;
        if (cVar != null) {
            cVar.E();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean e(androidx.appcompat.view.menu.g gVar, androidx.appcompat.view.menu.i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean f(androidx.appcompat.view.menu.g gVar, androidx.appcompat.view.menu.i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public int getId() {
        return this.e;
    }

    @Override // androidx.appcompat.view.menu.m
    public void h(Context context, androidx.appcompat.view.menu.g gVar) {
        this.g = LayoutInflater.from(context);
        this.d = gVar;
        this.t = context.getResources().getDimensionPixelOffset(R.dimen.nc);
    }

    @Override // androidx.appcompat.view.menu.m
    public void i(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.b.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle("android:menu:adapter");
            if (bundle2 != null) {
                this.f.B(bundle2);
            }
            SparseArray sparseParcelableArray2 = bundle.getSparseParcelableArray("android:menu:header");
            if (sparseParcelableArray2 != null) {
                this.c.restoreHierarchyState(sparseParcelableArray2);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean j(r rVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public Parcelable k() {
        Bundle bundle = new Bundle();
        if (this.b != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.b.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        c cVar = this.f;
        if (cVar != null) {
            bundle.putBundle("android:menu:adapter", cVar.z());
        }
        if (this.c != null) {
            SparseArray<? extends Parcelable> sparseArray2 = new SparseArray<>();
            this.c.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray("android:menu:header", sparseArray2);
        }
        return bundle;
    }

    public void l(l3 l3Var) {
        int e2 = l3Var.e();
        if (this.s != e2) {
            this.s = e2;
            A();
        }
        NavigationMenuView navigationMenuView = this.b;
        navigationMenuView.setPadding(0, navigationMenuView.getPaddingTop(), 0, l3Var.b());
        c3.d(this.c, l3Var);
    }

    public n m(ViewGroup viewGroup) {
        if (this.b == null) {
            NavigationMenuView navigationMenuView = (NavigationMenuView) this.g.inflate(R.layout.az, viewGroup, false);
            this.b = navigationMenuView;
            navigationMenuView.setAccessibilityDelegateCompat(new h(this.b));
            if (this.f == null) {
                this.f = new c();
            }
            int i2 = this.u;
            if (i2 != -1) {
                this.b.setOverScrollMode(i2);
            }
            this.c = (LinearLayout) this.g.inflate(R.layout.aw, (ViewGroup) this.b, false);
            this.b.setAdapter(this.f);
        }
        return this.b;
    }

    public View n(int i2) {
        View inflate = this.g.inflate(i2, (ViewGroup) this.c, false);
        this.c.addView(inflate);
        NavigationMenuView navigationMenuView = this.b;
        navigationMenuView.setPadding(0, 0, 0, navigationMenuView.getPaddingBottom());
        return inflate;
    }

    public void o(boolean z) {
        if (this.q != z) {
            this.q = z;
            A();
        }
    }

    public void p(int i2) {
        this.e = i2;
    }

    public void q(Drawable drawable) {
        this.l = drawable;
        c(false);
    }

    public void r(int i2) {
        this.m = i2;
        c(false);
    }

    public void s(int i2) {
        this.n = i2;
        c(false);
    }

    public void t(int i2) {
        if (this.o != i2) {
            this.o = i2;
            this.p = true;
            c(false);
        }
    }

    public void u(ColorStateList colorStateList) {
        this.k = colorStateList;
        c(false);
    }

    public void v(int i2) {
        this.r = i2;
        c(false);
    }

    public void w(int i2) {
        this.h = i2;
        this.i = true;
        c(false);
    }

    public void x(ColorStateList colorStateList) {
        this.j = colorStateList;
        c(false);
    }

    public void y(int i2) {
        this.u = i2;
        NavigationMenuView navigationMenuView = this.b;
        if (navigationMenuView != null) {
            navigationMenuView.setOverScrollMode(i2);
        }
    }

    public void z(boolean z) {
        c cVar = this.f;
        if (cVar != null) {
            cVar.D(z);
        }
    }
}
