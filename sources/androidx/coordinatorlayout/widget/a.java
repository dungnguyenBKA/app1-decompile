package androidx.coordinatorlayout.widget;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public final class a<T> {
    private final k2<ArrayList<T>> a = new l2(10);
    private final e0<T, ArrayList<T>> b = new e0<>();
    private final ArrayList<T> c = new ArrayList<>();
    private final HashSet<T> d = new HashSet<>();

    private void e(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (!arrayList.contains(t)) {
            if (!hashSet.contains(t)) {
                hashSet.add(t);
                ArrayList<T> orDefault = this.b.getOrDefault(t, null);
                if (orDefault != null) {
                    int size = orDefault.size();
                    for (int i = 0; i < size; i++) {
                        e(orDefault.get(i), arrayList, hashSet);
                    }
                }
                hashSet.remove(t);
                arrayList.add(t);
                return;
            }
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
    }

    public void a(T t, T t2) {
        boolean z = false;
        if (this.b.e(t) >= 0) {
            if (this.b.e(t2) >= 0) {
                z = true;
            }
            if (z) {
                ArrayList<T> orDefault = this.b.getOrDefault(t, null);
                if (orDefault == null) {
                    orDefault = this.a.b();
                    if (orDefault == null) {
                        orDefault = new ArrayList<>();
                    }
                    this.b.put(t, orDefault);
                }
                orDefault.add(t2);
                return;
            }
        }
        throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
    }

    public void b(T t) {
        if (!(this.b.e(t) >= 0)) {
            this.b.put(t, null);
        }
    }

    public void c() {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> l = this.b.l(i);
            if (l != null) {
                l.clear();
                this.a.a(l);
            }
        }
        this.b.clear();
    }

    public boolean d(T t) {
        return this.b.e(t) >= 0;
    }

    public List f(T t) {
        return this.b.getOrDefault(t, null);
    }

    public List<T> g(T t) {
        int size = this.b.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            ArrayList<T> l = this.b.l(i);
            if (l != null && l.contains(t)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(this.b.h(i));
            }
        }
        return arrayList;
    }

    public ArrayList<T> h() {
        this.c.clear();
        this.d.clear();
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            e(this.b.h(i), this.c, this.d);
        }
        return this.c;
    }

    public boolean i(T t) {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> l = this.b.l(i);
            if (l != null && l.contains(t)) {
                return true;
            }
        }
        return false;
    }
}
