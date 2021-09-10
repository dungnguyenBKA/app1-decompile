package com.facebook.rebound;

import android.view.Choreographer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

public class g {
    private final Map<String, b> a = new HashMap();
    private final Set<b> b = new CopyOnWriteArraySet();
    private final f c;
    private final CopyOnWriteArraySet<h> d = new CopyOnWriteArraySet<>();
    private boolean e = true;

    private g(f fVar) {
        this.c = fVar;
        fVar.a = this;
    }

    public static g b() {
        return new g(new a(Choreographer.getInstance()));
    }

    /* access modifiers changed from: package-private */
    public void a(String str) {
        b bVar = this.a.get(str);
        if (bVar != null) {
            this.b.add(bVar);
            if (this.e) {
                this.e = false;
                this.c.a();
                return;
            }
            return;
        }
        throw new IllegalArgumentException(ic.j("springId ", str, " does not reference a registered spring"));
    }

    public b c() {
        b bVar = new b(this);
        if (!this.a.containsKey(bVar.e())) {
            this.a.put(bVar.e(), bVar);
            return bVar;
        }
        throw new IllegalArgumentException("spring is already registered");
    }

    public void d(double d2) {
        Iterator<h> it = this.d.iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
        for (b bVar : this.b) {
            if (bVar.i()) {
                bVar.b(d2 / 1000.0d);
            } else {
                this.b.remove(bVar);
            }
        }
        if (this.b.isEmpty()) {
            this.e = true;
        }
        Iterator<h> it2 = this.d.iterator();
        while (it2.hasNext()) {
            it2.next().b(this);
        }
        if (this.e) {
            this.c.b();
        }
    }
}
