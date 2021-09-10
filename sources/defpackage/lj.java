package defpackage;

import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* renamed from: lj  reason: default package */
public class lj {
    private final Set<zj> a = Collections.newSetFromMap(new WeakHashMap());
    private final List<zj> b = new ArrayList();
    private boolean c;

    public boolean a(zj zjVar) {
        boolean z = true;
        if (zjVar == null) {
            return true;
        }
        boolean remove = this.a.remove(zjVar);
        if (!this.b.remove(zjVar) && !remove) {
            z = false;
        }
        if (z) {
            zjVar.clear();
        }
        return z;
    }

    public void b() {
        Iterator it = ((ArrayList) hl.e(this.a)).iterator();
        while (it.hasNext()) {
            a((zj) it.next());
        }
        this.b.clear();
    }

    public void c() {
        this.c = true;
        Iterator it = ((ArrayList) hl.e(this.a)).iterator();
        while (it.hasNext()) {
            zj zjVar = (zj) it.next();
            if (zjVar.isRunning()) {
                zjVar.pause();
                this.b.add(zjVar);
            }
        }
    }

    public void d() {
        Iterator it = ((ArrayList) hl.e(this.a)).iterator();
        while (it.hasNext()) {
            zj zjVar = (zj) it.next();
            if (!zjVar.isComplete() && !zjVar.b()) {
                zjVar.clear();
                if (!this.c) {
                    zjVar.c();
                } else {
                    this.b.add(zjVar);
                }
            }
        }
    }

    public void e() {
        this.c = false;
        Iterator it = ((ArrayList) hl.e(this.a)).iterator();
        while (it.hasNext()) {
            zj zjVar = (zj) it.next();
            if (!zjVar.isComplete() && !zjVar.isRunning()) {
                zjVar.c();
            }
        }
        this.b.clear();
    }

    public void f(zj zjVar) {
        this.a.add(zjVar);
        if (!this.c) {
            zjVar.c();
            return;
        }
        zjVar.clear();
        Log.isLoggable("RequestTracker", 2);
        this.b.add(zjVar);
    }

    public String toString() {
        return super.toString() + "{numRequests=" + this.a.size() + ", isPaused=" + this.c + "}";
    }
}
