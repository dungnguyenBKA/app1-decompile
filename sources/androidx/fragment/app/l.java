package androidx.fragment.app;

import android.view.animation.Interpolator;
import androidx.lifecycle.s;
import androidx.lifecycle.t;
import androidx.lifecycle.u;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* access modifiers changed from: package-private */
public class l extends s {
    private static final t.a g = new a();
    private final HashSet<Fragment> b = new HashSet<>();
    private final HashMap<String, l> c = new HashMap<>();
    private final HashMap<String, u> d = new HashMap<>();
    private final boolean e;
    private boolean f = false;

    static class a implements t.a {
        a() {
        }

        @Override // androidx.lifecycle.t.a
        public <T extends s> T a(Class<T> cls) {
            return new l(true);
        }
    }

    l(boolean z) {
        this.e = z;
    }

    static l e(u uVar) {
        return (l) new t(uVar, g).a(l.class);
    }

    /* access modifiers changed from: protected */
    @Override // androidx.lifecycle.s
    public void b() {
        Interpolator interpolator = h.H;
        this.f = true;
    }

    /* access modifiers changed from: package-private */
    public void c(Fragment fragment) {
        Interpolator interpolator = h.H;
        l lVar = this.c.get(fragment.e);
        if (lVar != null) {
            lVar.b();
            this.c.remove(fragment.e);
        }
        u uVar = this.d.get(fragment.e);
        if (uVar != null) {
            uVar.a();
            this.d.remove(fragment.e);
        }
    }

    /* access modifiers changed from: package-private */
    public l d(Fragment fragment) {
        l lVar = this.c.get(fragment.e);
        if (lVar != null) {
            return lVar;
        }
        l lVar2 = new l(this.e);
        this.c.put(fragment.e, lVar2);
        return lVar2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        if (!this.b.equals(lVar.b) || !this.c.equals(lVar.c) || !this.d.equals(lVar.d)) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    public Collection<Fragment> f() {
        return this.b;
    }

    /* access modifiers changed from: package-private */
    public u g(Fragment fragment) {
        u uVar = this.d.get(fragment.e);
        if (uVar != null) {
            return uVar;
        }
        u uVar2 = new u();
        this.d.put(fragment.e, uVar2);
        return uVar2;
    }

    /* access modifiers changed from: package-private */
    public boolean h() {
        return this.f;
    }

    public int hashCode() {
        int hashCode = this.c.hashCode();
        return this.d.hashCode() + ((hashCode + (this.b.hashCode() * 31)) * 31);
    }

    /* access modifiers changed from: package-private */
    public boolean i(Fragment fragment) {
        return this.b.remove(fragment);
    }

    /* access modifiers changed from: package-private */
    public boolean j(Fragment fragment) {
        if (this.b.contains(fragment) && this.e) {
            return this.f;
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it = this.b.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it2 = this.c.keySet().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it3 = this.d.keySet().iterator();
        while (it3.hasNext()) {
            sb.append(it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
