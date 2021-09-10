package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;

/* access modifiers changed from: package-private */
public abstract class k implements p, m, AdapterView.OnItemClickListener {
    private Rect b;

    k() {
    }

    protected static int p(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        f fVar = (f) listAdapter;
        int count = fVar.getCount();
        FrameLayout frameLayout = null;
        View view = null;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < count; i4++) {
            int itemViewType = fVar.getItemViewType(i4);
            if (itemViewType != i3) {
                view = null;
                i3 = itemViewType;
            }
            if (frameLayout == null) {
                frameLayout = new FrameLayout(context);
            }
            view = fVar.getView(i4, view, frameLayout);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i) {
                return i;
            }
            if (measuredWidth > i2) {
                i2 = measuredWidth;
            }
        }
        return i2;
    }

    protected static boolean y(g gVar) {
        int size = gVar.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = gVar.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                return true;
            }
        }
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
    public int getId() {
        return 0;
    }

    @Override // androidx.appcompat.view.menu.m
    public void h(Context context, g gVar) {
    }

    public abstract void m(g gVar);

    /* access modifiers changed from: protected */
    public boolean n() {
        return true;
    }

    public Rect o() {
        return this.b;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        f fVar;
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        if (listAdapter instanceof HeaderViewListAdapter) {
            fVar = (f) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter();
        } else {
            fVar = (f) listAdapter;
        }
        fVar.a.z((MenuItem) listAdapter.getItem(i), this, n() ? 0 : 4);
    }

    public abstract void q(View view);

    public void r(Rect rect) {
        this.b = rect;
    }

    public abstract void s(boolean z);

    public abstract void t(int i);

    public abstract void u(int i);

    public abstract void v(PopupWindow.OnDismissListener onDismissListener);

    public abstract void w(boolean z);

    public abstract void x(int i);
}
