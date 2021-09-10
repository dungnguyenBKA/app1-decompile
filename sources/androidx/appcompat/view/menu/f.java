package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.n;
import java.util.ArrayList;

public class f extends BaseAdapter {
    g a;
    private int b = -1;
    private boolean c;
    private final boolean d;
    private final LayoutInflater e;
    private final int f;

    public f(g gVar, LayoutInflater layoutInflater, boolean z, int i) {
        this.d = z;
        this.e = layoutInflater;
        this.a = gVar;
        this.f = i;
        a();
    }

    /* access modifiers changed from: package-private */
    public void a() {
        i o = this.a.o();
        if (o != null) {
            ArrayList<i> p = this.a.p();
            int size = p.size();
            for (int i = 0; i < size; i++) {
                if (p.get(i) == o) {
                    this.b = i;
                    return;
                }
            }
        }
        this.b = -1;
    }

    public g b() {
        return this.a;
    }

    /* renamed from: c */
    public i getItem(int i) {
        ArrayList<i> p = this.d ? this.a.p() : this.a.r();
        int i2 = this.b;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return p.get(i);
    }

    public void d(boolean z) {
        this.c = z;
    }

    public int getCount() {
        ArrayList<i> p = this.d ? this.a.p() : this.a.r();
        if (this.b < 0) {
            return p.size();
        }
        return p.size() - 1;
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.e.inflate(this.f, viewGroup, false);
        }
        int groupId = getItem(i).getGroupId();
        int i2 = i - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.d(this.a.s() && groupId != (i2 >= 0 ? getItem(i2).getGroupId() : groupId));
        n.a aVar = (n.a) view;
        if (this.c) {
            listMenuItemView.b(true);
        }
        aVar.k(getItem(i), 0);
        return view;
    }

    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
