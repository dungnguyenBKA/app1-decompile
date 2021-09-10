package com.camerasideas.collagemaker.photoproc.graphicsitems;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class i {
    public static i c;
    private int a = -1;
    private List<b> b = new ArrayList();

    public static i k() {
        if (c == null) {
            synchronized (i.class) {
                if (c == null) {
                    c = new i();
                    em.h("ItemHolder", "getInstance");
                }
            }
        }
        return c;
    }

    public void a(b bVar) {
        this.b.add(bVar);
    }

    public void b() {
        ArrayList arrayList = new ArrayList();
        for (b bVar : this.b) {
            if (!(bVar instanceof h)) {
                arrayList.add(bVar);
            }
        }
        this.b.clear();
        this.b.addAll(arrayList);
        this.a = -1;
    }

    public void c() {
        this.b.clear();
        this.a = -1;
    }

    public void d() {
        this.a = -1;
        for (b bVar : this.b) {
            bVar.i = false;
        }
    }

    public void e(b bVar) {
        this.b.remove(bVar);
    }

    public boolean f(b bVar) {
        return this.b.indexOf(bVar) > 0;
    }

    public boolean g(b bVar) {
        int indexOf = this.b.indexOf(bVar);
        return indexOf < this.b.size() - 1 && indexOf > -1;
    }

    public void h(boolean z) {
        for (b bVar : this.b) {
            if (bVar instanceof j) {
                bVar.j = z;
            }
        }
    }

    public int i() {
        int i = 0;
        for (b bVar : this.b) {
            if (bVar instanceof h) {
                i++;
            }
        }
        return i;
    }

    public h j() {
        if (this.b.size() <= 0) {
            return null;
        }
        for (b bVar : this.b) {
            if (bVar instanceof h) {
                return (h) bVar;
            }
        }
        return null;
    }

    public List<b> l() {
        return this.b;
    }

    public b m() {
        int i = this.a;
        if (i == -1 || i < 0 || i >= this.b.size()) {
            return null;
        }
        return this.b.get(this.a);
    }

    public boolean n() {
        for (b bVar : this.b) {
            if (bVar instanceof j) {
                return true;
            }
        }
        return false;
    }

    public boolean o() {
        return (this.a == -1 || m() == null) ? false : true;
    }

    public void p() {
        int indexOf = this.b.indexOf(m());
        int i = indexOf - 1;
        Collections.swap(this.b, indexOf, i);
        this.a = i;
    }

    public void q() {
        int indexOf = this.b.indexOf(m());
        int i = indexOf + 1;
        Collections.swap(this.b, indexOf, i);
        this.a = i;
    }

    public void r(b bVar) {
        for (b bVar2 : this.b) {
            if (bVar2 == bVar) {
                bVar2.i = true;
                this.a = this.b.indexOf(bVar2);
            } else {
                bVar2.i = false;
            }
        }
    }

    public void s(int i) {
        this.a = i;
    }
}
