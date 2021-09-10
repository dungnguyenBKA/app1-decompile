package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.Iterator;
import java.util.Map;

/* access modifiers changed from: package-private */
public abstract class c {
    final Context a;
    private Map<v1, MenuItem> b;
    private Map<w1, SubMenu> c;

    c(Context context) {
        this.a = context;
    }

    /* access modifiers changed from: package-private */
    public final MenuItem c(MenuItem menuItem) {
        if (!(menuItem instanceof v1)) {
            return menuItem;
        }
        v1 v1Var = (v1) menuItem;
        if (this.b == null) {
            this.b = new x();
        }
        MenuItem menuItem2 = this.b.get(menuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        j jVar = new j(this.a, v1Var);
        this.b.put(v1Var, jVar);
        return jVar;
    }

    /* access modifiers changed from: package-private */
    public final SubMenu d(SubMenu subMenu) {
        if (!(subMenu instanceof w1)) {
            return subMenu;
        }
        w1 w1Var = (w1) subMenu;
        if (this.c == null) {
            this.c = new x();
        }
        SubMenu subMenu2 = this.c.get(w1Var);
        if (subMenu2 != null) {
            return subMenu2;
        }
        s sVar = new s(this.a, w1Var);
        this.c.put(w1Var, sVar);
        return sVar;
    }

    /* access modifiers changed from: package-private */
    public final void e() {
        Map<v1, MenuItem> map = this.b;
        if (map != null) {
            map.clear();
        }
        Map<w1, SubMenu> map2 = this.c;
        if (map2 != null) {
            map2.clear();
        }
    }

    /* access modifiers changed from: package-private */
    public final void f(int i) {
        Map<v1, MenuItem> map = this.b;
        if (map != null) {
            Iterator<v1> it = map.keySet().iterator();
            while (it.hasNext()) {
                if (i == it.next().getGroupId()) {
                    it.remove();
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void g(int i) {
        Map<v1, MenuItem> map = this.b;
        if (map != null) {
            Iterator<v1> it = map.keySet().iterator();
            while (it.hasNext()) {
                if (i == it.next().getItemId()) {
                    it.remove();
                    return;
                }
            }
        }
    }
}
