package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* access modifiers changed from: package-private */
/* renamed from: yi  reason: default package */
public class yi implements fj {
    private final Set<gj> a = Collections.newSetFromMap(new WeakHashMap());
    private boolean b;
    private boolean c;

    yi() {
    }

    @Override // defpackage.fj
    public void a(gj gjVar) {
        this.a.add(gjVar);
        if (this.c) {
            gjVar.onDestroy();
        } else if (this.b) {
            gjVar.onStart();
        } else {
            gjVar.onStop();
        }
    }

    @Override // defpackage.fj
    public void b(gj gjVar) {
        this.a.remove(gjVar);
    }

    /* access modifiers changed from: package-private */
    public void c() {
        this.c = true;
        Iterator it = ((ArrayList) hl.e(this.a)).iterator();
        while (it.hasNext()) {
            ((gj) it.next()).onDestroy();
        }
    }

    /* access modifiers changed from: package-private */
    public void d() {
        this.b = true;
        Iterator it = ((ArrayList) hl.e(this.a)).iterator();
        while (it.hasNext()) {
            ((gj) it.next()).onStart();
        }
    }

    /* access modifiers changed from: package-private */
    public void e() {
        this.b = false;
        Iterator it = ((ArrayList) hl.e(this.a)).iterator();
        while (it.hasNext()) {
            ((gj) it.next()).onStop();
        }
    }
}
