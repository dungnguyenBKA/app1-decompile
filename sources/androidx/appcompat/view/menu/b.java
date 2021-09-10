package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import java.util.ArrayList;

public abstract class b implements m {
    protected Context b;
    protected Context c;
    protected g d;
    protected LayoutInflater e;
    private m.a f;
    private int g;
    private int h;
    protected n i;
    private int j;

    public b(Context context, int i2, int i3) {
        this.b = context;
        this.e = LayoutInflater.from(context);
        this.g = i2;
        this.h = i3;
    }

    public abstract void a(i iVar, n.a aVar);

    @Override // androidx.appcompat.view.menu.m
    public void b(g gVar, boolean z) {
        m.a aVar = this.f;
        if (aVar != null) {
            aVar.b(gVar, z);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void c(boolean z) {
        ViewGroup viewGroup = (ViewGroup) this.i;
        if (viewGroup != null) {
            g gVar = this.d;
            int i2 = 0;
            if (gVar != null) {
                gVar.k();
                ArrayList<i> r = this.d.r();
                int size = r.size();
                int i3 = 0;
                for (int i4 = 0; i4 < size; i4++) {
                    i iVar = r.get(i4);
                    if (q(i3, iVar)) {
                        View childAt = viewGroup.getChildAt(i3);
                        i c2 = childAt instanceof n.a ? ((n.a) childAt).c() : null;
                        View n = n(iVar, childAt, viewGroup);
                        if (iVar != c2) {
                            n.setPressed(false);
                            n.jumpDrawablesToCurrentState();
                        }
                        if (n != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) n.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(n);
                            }
                            ((ViewGroup) this.i).addView(n, i3);
                        }
                        i3++;
                    }
                }
                i2 = i3;
            }
            while (i2 < viewGroup.getChildCount()) {
                if (!l(viewGroup, i2)) {
                    i2++;
                }
            }
        }
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
        return this.j;
    }

    @Override // androidx.appcompat.view.menu.m
    public void h(Context context, g gVar) {
        this.c = context;
        LayoutInflater.from(context);
        this.d = gVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean j(r rVar) {
        m.a aVar = this.f;
        if (aVar != null) {
            return aVar.c(rVar);
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public abstract boolean l(ViewGroup viewGroup, int i2);

    public m.a m() {
        return this.f;
    }

    public View n(i iVar, View view, ViewGroup viewGroup) {
        n.a aVar;
        if (view instanceof n.a) {
            aVar = (n.a) view;
        } else {
            aVar = (n.a) this.e.inflate(this.h, viewGroup, false);
        }
        a(iVar, aVar);
        return (View) aVar;
    }

    public n o(ViewGroup viewGroup) {
        if (this.i == null) {
            n nVar = (n) this.e.inflate(this.g, viewGroup, false);
            this.i = nVar;
            nVar.b(this.d);
            c(true);
        }
        return this.i;
    }

    public void p(int i2) {
        this.j = i2;
    }

    public abstract boolean q(int i2, i iVar);
}
