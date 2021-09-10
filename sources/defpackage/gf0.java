package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* renamed from: gf0  reason: default package */
public final class gf0 extends AtomicReferenceArray<Object> implements Runnable, Callable<Object>, be0 {
    static final Object c = new Object();
    static final Object d = new Object();
    static final Object e = new Object();
    static final Object f = new Object();
    final Runnable b;

    public gf0(Runnable runnable, ke0 ke0) {
        super(3);
        this.b = runnable;
        lazySet(0, ke0);
    }

    public void a(Future<?> future) {
        Object obj;
        do {
            obj = get(1);
            if (obj != f) {
                if (obj == d) {
                    future.cancel(false);
                    return;
                } else if (obj == e) {
                    future.cancel(true);
                    return;
                }
            } else {
                return;
            }
        } while (!compareAndSet(1, obj, future));
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        run();
        return null;
    }

    @Override // defpackage.be0
    public void e() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        while (true) {
            Object obj5 = get(1);
            if (obj5 == f || obj5 == (obj3 = d) || obj5 == (obj4 = e)) {
                break;
            }
            boolean z = get(2) != Thread.currentThread();
            if (z) {
                obj3 = obj4;
            }
            if (compareAndSet(1, obj5, obj3)) {
                if (obj5 != null) {
                    ((Future) obj5).cancel(z);
                }
            }
        }
        do {
            obj = get(0);
            if (obj == f || obj == (obj2 = c) || obj == null) {
                return;
            }
        } while (!compareAndSet(0, obj, obj2));
        ((ke0) obj).c(this);
    }

    public void run() {
        Object obj;
        Object obj2;
        lazySet(2, Thread.currentThread());
        try {
            this.b.run();
        } catch (Throwable th) {
            lazySet(2, null);
            Object obj3 = get(0);
            if (!(obj3 == c || !compareAndSet(0, obj3, f) || obj3 == null)) {
                ((ke0) obj3).c(this);
            }
            do {
                obj2 = get(1);
                if (obj2 == d || obj2 == e) {
                    throw th;
                }
            } while (!compareAndSet(1, obj2, f));
            throw th;
        }
        lazySet(2, null);
        Object obj4 = get(0);
        if (!(obj4 == c || !compareAndSet(0, obj4, f) || obj4 == null)) {
            ((ke0) obj4).c(this);
        }
        do {
            obj = get(1);
            if (obj == d || obj == e) {
                return;
            }
        } while (!compareAndSet(1, obj, f));
    }
}
