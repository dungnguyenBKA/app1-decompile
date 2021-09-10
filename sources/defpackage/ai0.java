package defpackage;

import java.util.LinkedHashSet;
import java.util.Set;

/* renamed from: ai0  reason: default package */
public final class ai0 {
    private final Set<nh0> a = new LinkedHashSet();

    public synchronized void a(nh0 nh0) {
        this.a.remove(nh0);
    }

    public synchronized void b(nh0 nh0) {
        this.a.add(nh0);
    }

    public synchronized boolean c(nh0 nh0) {
        return this.a.contains(nh0);
    }
}
