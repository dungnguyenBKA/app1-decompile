package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import java.util.ArrayList;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class e implements m, AdapterView.OnItemClickListener {
    Context b;
    LayoutInflater c;
    g d;
    ExpandedMenuView e;
    private m.a f;
    a g;

    /* access modifiers changed from: private */
    public class a extends BaseAdapter {
        private int a = -1;

        public a() {
            a();
        }

        /* access modifiers changed from: package-private */
        public void a() {
            i o = e.this.d.o();
            if (o != null) {
                ArrayList<i> p = e.this.d.p();
                int size = p.size();
                for (int i = 0; i < size; i++) {
                    if (p.get(i) == o) {
                        this.a = i;
                        return;
                    }
                }
            }
            this.a = -1;
        }

        /* renamed from: b */
        public i getItem(int i) {
            ArrayList<i> p = e.this.d.p();
            Objects.requireNonNull(e.this);
            int i2 = i + 0;
            int i3 = this.a;
            if (i3 >= 0 && i2 >= i3) {
                i2++;
            }
            return p.get(i2);
        }

        public int getCount() {
            int size = e.this.d.p().size();
            Objects.requireNonNull(e.this);
            int i = size + 0;
            return this.a < 0 ? i : i - 1;
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = e.this.c.inflate(R.layout.q, viewGroup, false);
            }
            ((n.a) view).k(getItem(i), 0);
            return view;
        }

        public void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }

    public e(Context context, int i) {
        this.b = context;
        this.c = LayoutInflater.from(context);
    }

    public ListAdapter a() {
        if (this.g == null) {
            this.g = new a();
        }
        return this.g;
    }

    @Override // androidx.appcompat.view.menu.m
    public void b(g gVar, boolean z) {
        m.a aVar = this.f;
        if (aVar != null) {
            aVar.b(gVar, z);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void c(boolean z) {
        a aVar = this.g;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean e(g gVar, i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean f(g gVar, i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public void g(m.a aVar) {
        this.f = aVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public int getId() {
        return 0;
    }

    @Override // androidx.appcompat.view.menu.m
    public void h(Context context, g gVar) {
        if (this.b != null) {
            this.b = context;
            if (this.c == null) {
                this.c = LayoutInflater.from(context);
            }
        }
        this.d = gVar;
        a aVar = this.g;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void i(Parcelable parcelable) {
        SparseArray<Parcelable> sparseParcelableArray = ((Bundle) parcelable).getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.e.restoreHierarchyState(sparseParcelableArray);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean j(r rVar) {
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        new h(rVar).a(null);
        m.a aVar = this.f;
        if (aVar == null) {
            return true;
        }
        aVar.c(rVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.m
    public Parcelable k() {
        if (this.e == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.e;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        return bundle;
    }

    public n l(ViewGroup viewGroup) {
        if (this.e == null) {
            this.e = (ExpandedMenuView) this.c.inflate(R.layout.n, viewGroup, false);
            if (this.g == null) {
                this.g = new a();
            }
            this.e.setAdapter((ListAdapter) this.g);
            this.e.setOnItemClickListener(this);
        }
        return this.e;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.d.z(this.g.getItem(i), this, 0);
    }
}
