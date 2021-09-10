package defpackage;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* renamed from: o2  reason: default package */
public abstract class o2 {
    private a a;
    private b b;

    /* renamed from: o2$a */
    public interface a {
    }

    /* renamed from: o2$b */
    public interface b {
    }

    public o2(Context context) {
    }

    public boolean a() {
        return false;
    }

    public boolean b() {
        return true;
    }

    public abstract View c();

    public View d(MenuItem menuItem) {
        return c();
    }

    public boolean e() {
        return false;
    }

    public void f(SubMenu subMenu) {
    }

    public boolean g() {
        return false;
    }

    public void h() {
        this.b = null;
        this.a = null;
    }

    public void i(a aVar) {
        this.a = aVar;
    }

    public void j(b bVar) {
        if (this.b != null) {
            StringBuilder q = ic.q("setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this ");
            q.append(getClass().getSimpleName());
            q.append(" instance while it is still in use somewhere else?");
            Log.w("ActionProvider(support)", q.toString());
        }
        this.b = bVar;
    }
}
