package androidx.work.impl;

import android.text.TextUtils;
import androidx.work.h;
import androidx.work.impl.utils.c;
import androidx.work.k;
import androidx.work.l;
import androidx.work.o;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class f extends l {
    private static final String j = h.f("WorkContinuationImpl");
    private final i a;
    private final String b = null;
    private final androidx.work.f c;
    private final List<? extends o> d;
    private final List<String> e;
    private final List<String> f;
    private final List<f> g;
    private boolean h;
    private k i;

    f(i iVar, List<? extends o> list) {
        androidx.work.f fVar = androidx.work.f.KEEP;
        this.a = iVar;
        this.c = fVar;
        this.d = list;
        this.g = null;
        this.e = new ArrayList(list.size());
        this.f = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            String a2 = ((o) list.get(i2)).a();
            this.e.add(a2);
            this.f.add(a2);
        }
    }

    private static boolean i(f fVar, Set<String> set) {
        set.addAll(fVar.e);
        Set<String> l = l(fVar);
        for (String str : set) {
            if (((HashSet) l).contains(str)) {
                return true;
            }
        }
        List<f> list = fVar.g;
        if (list != null && !list.isEmpty()) {
            for (f fVar2 : list) {
                if (i(fVar2, set)) {
                    return true;
                }
            }
        }
        set.removeAll(fVar.e);
        return false;
    }

    public static Set<String> l(f fVar) {
        HashSet hashSet = new HashSet();
        List<f> list = fVar.g;
        if (list != null && !list.isEmpty()) {
            for (f fVar2 : list) {
                hashSet.addAll(fVar2.e);
            }
        }
        return hashSet;
    }

    public k a() {
        if (!this.h) {
            c cVar = new c(this);
            ((n6) this.a.j()).a(cVar);
            this.i = cVar.a();
        } else {
            h.c().h(j, String.format("Already enqueued work ids (%s)", TextUtils.join(", ", this.e)), new Throwable[0]);
        }
        return this.i;
    }

    public androidx.work.f b() {
        return this.c;
    }

    public List<String> c() {
        return this.e;
    }

    public String d() {
        return this.b;
    }

    public List<f> e() {
        return this.g;
    }

    public List<? extends o> f() {
        return this.d;
    }

    public i g() {
        return this.a;
    }

    public boolean h() {
        return i(this, new HashSet());
    }

    public boolean j() {
        return this.h;
    }

    public void k() {
        this.h = true;
    }
}
