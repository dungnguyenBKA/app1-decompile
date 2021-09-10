package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Incorrect class signature, class is equals to this class: Lff0;Ljava/util/concurrent/Callable<Ljava/lang/Void;>; */
/* renamed from: ff0  reason: default package */
public final class ff0 extends AtomicReference implements Callable<Void>, be0 {
    protected static final FutureTask<Void> d;
    protected static final FutureTask<Void> e;
    protected final Runnable b;
    protected Thread c;

    static {
        Runnable runnable = oe0.a;
        d = new FutureTask<>(runnable, null);
        e = new FutureTask<>(runnable, null);
    }

    public ff0(Runnable runnable) {
        this.b = runnable;
    }

    public final void a(Future future) {
        Future future2;
        do {
            future2 = (Future) get();
            if (future2 != d) {
                if (future2 == e) {
                    future.cancel(this.c != Thread.currentThread());
                    return;
                }
            } else {
                return;
            }
        } while (!compareAndSet(future2, future));
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public Void call() {
        this.c = Thread.currentThread();
        try {
            this.b.run();
            return null;
        } finally {
            lazySet(d);
            this.c = null;
        }
    }

    @Override // defpackage.be0
    public final void e() {
        FutureTask<Void> futureTask;
        Future future = (Future) get();
        if (future != d && future != (futureTask = e) && compareAndSet(future, futureTask) && future != null) {
            future.cancel(this.c != Thread.currentThread());
        }
    }
}
