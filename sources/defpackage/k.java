package defpackage;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;

/* renamed from: k  reason: default package */
public abstract class k {
    private Object b;
    private boolean c;

    /* renamed from: k$a */
    public interface a {
        void a(k kVar);

        boolean b(k kVar, Menu menu);

        boolean c(k kVar, Menu menu);

        boolean d(k kVar, MenuItem menuItem);
    }

    public abstract void c();

    public abstract View d();

    public abstract Menu e();

    public abstract MenuInflater f();

    public abstract CharSequence g();

    public Object h() {
        return this.b;
    }

    public abstract CharSequence i();

    public boolean j() {
        return this.c;
    }

    public abstract void k();

    public abstract boolean l();

    public abstract void m(View view);

    public abstract void n(int i);

    public abstract void o(CharSequence charSequence);

    public void p(Object obj) {
        this.b = obj;
    }

    public abstract void q(int i);

    public abstract void r(CharSequence charSequence);

    public void s(boolean z) {
        this.c = z;
    }
}
