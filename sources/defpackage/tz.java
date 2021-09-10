package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* access modifiers changed from: package-private */
/* renamed from: tz  reason: default package */
public class tz {
    private final Executor a;
    private kw<Void> b = nw.d(null);
    private final Object c = new Object();
    private final ThreadLocal<Boolean> d = new ThreadLocal<>();

    /* renamed from: tz$a */
    class a implements Runnable {
        a() {
        }

        public void run() {
            tz.this.d.set(Boolean.TRUE);
        }
    }

    public tz(Executor executor) {
        this.a = executor;
        executor.execute(new a());
    }

    public void b() {
        if (!Boolean.TRUE.equals(this.d.get())) {
            throw new IllegalStateException("Not running on background worker thread as intended.");
        }
    }

    public Executor c() {
        return this.a;
    }

    public <T> kw<T> d(Callable<T> callable) {
        kw kwVar;
        synchronized (this.c) {
            kwVar = (kw<TContinuationResult>) this.b.g(this.a, new vz(this, callable));
            this.b = kwVar.g(this.a, new wz(this));
        }
        return kwVar;
    }

    public <T> kw<T> e(Callable<kw<T>> callable) {
        kw kwVar;
        synchronized (this.c) {
            kwVar = (kw<TContinuationResult>) this.b.h(this.a, new vz(this, callable));
            this.b = kwVar.g(this.a, new wz(this));
        }
        return kwVar;
    }
}
