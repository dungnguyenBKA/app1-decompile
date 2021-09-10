package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* renamed from: nj  reason: default package */
public final class nj implements gj {
    private final Set<nk<?>> b = Collections.newSetFromMap(new WeakHashMap());

    public void i() {
        this.b.clear();
    }

    public List<nk<?>> j() {
        return hl.e(this.b);
    }

    public void k(nk<?> nkVar) {
        this.b.add(nkVar);
    }

    public void l(nk<?> nkVar) {
        this.b.remove(nkVar);
    }

    @Override // defpackage.gj
    public void onDestroy() {
        Iterator it = ((ArrayList) hl.e(this.b)).iterator();
        while (it.hasNext()) {
            ((nk) it.next()).onDestroy();
        }
    }

    @Override // defpackage.gj
    public void onStart() {
        Iterator it = ((ArrayList) hl.e(this.b)).iterator();
        while (it.hasNext()) {
            ((nk) it.next()).onStart();
        }
    }

    @Override // defpackage.gj
    public void onStop() {
        Iterator it = ((ArrayList) hl.e(this.b)).iterator();
        while (it.hasNext()) {
            ((nk) it.next()).onStop();
        }
    }
}
