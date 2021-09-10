package defpackage;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* renamed from: u50  reason: default package */
public class u50 {
    private static volatile u50 b;
    private final Set<v50> a = new HashSet();

    u50() {
    }

    public static u50 a() {
        u50 u50 = b;
        if (u50 == null) {
            synchronized (u50.class) {
                u50 = b;
                if (u50 == null) {
                    u50 = new u50();
                    b = u50;
                }
            }
        }
        return u50;
    }

    /* access modifiers changed from: package-private */
    public Set<v50> b() {
        Set<v50> unmodifiableSet;
        synchronized (this.a) {
            unmodifiableSet = Collections.unmodifiableSet(this.a);
        }
        return unmodifiableSet;
    }
}
