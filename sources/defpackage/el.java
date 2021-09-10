package defpackage;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* renamed from: el  reason: default package */
public class el<T, Y> {
    private final Map<T, Y> a = new LinkedHashMap(100, 0.75f, true);
    private long b;
    private long c;

    public el(long j) {
        this.b = j;
    }

    public void a() {
        h(0);
    }

    public synchronized Y b(T t) {
        return this.a.get(t);
    }

    public synchronized long c() {
        return this.b;
    }

    /* access modifiers changed from: protected */
    public int d(Y y) {
        return 1;
    }

    /* access modifiers changed from: protected */
    public void e(T t, Y y) {
    }

    public synchronized Y f(T t, Y y) {
        long d = (long) d(y);
        if (d >= this.b) {
            e(t, y);
            return null;
        }
        if (y != null) {
            this.c += d;
        }
        Y put = this.a.put(t, y);
        if (put != null) {
            this.c -= (long) d(put);
            if (!put.equals(y)) {
                e(t, put);
            }
        }
        h(this.b);
        return put;
    }

    public synchronized Y g(T t) {
        Y remove;
        remove = this.a.remove(t);
        if (remove != null) {
            this.c -= (long) d(remove);
        }
        return remove;
    }

    /* access modifiers changed from: protected */
    public synchronized void h(long j) {
        while (this.c > j) {
            Iterator<Map.Entry<T, Y>> it = this.a.entrySet().iterator();
            Map.Entry<T, Y> next = it.next();
            Y value = next.getValue();
            this.c -= (long) d(value);
            T key = next.getKey();
            it.remove();
            e(key, value);
        }
    }
}
