package org.greenrobot.eventbus;

import java.util.ArrayList;
import java.util.List;

/* access modifiers changed from: package-private */
public final class h {
    private static final List<h> d = new ArrayList();
    Object a;
    n b;
    h c;

    private h(Object obj, n nVar) {
        this.a = obj;
        this.b = nVar;
    }

    static h a(n nVar, Object obj) {
        List<h> list = d;
        synchronized (list) {
            int size = list.size();
            if (size <= 0) {
                return new h(obj, nVar);
            }
            h remove = list.remove(size - 1);
            remove.a = obj;
            remove.b = nVar;
            remove.c = null;
            return remove;
        }
    }

    static void b(h hVar) {
        hVar.a = null;
        hVar.b = null;
        hVar.c = null;
        List<h> list = d;
        synchronized (list) {
            if (list.size() < 10000) {
                list.add(hVar);
            }
        }
    }
}
