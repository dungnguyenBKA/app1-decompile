package com.airbnb.lottie;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

public class o<T> {
    public static Executor e = Executors.newCachedThreadPool();
    private final Set<i<T>> a = new LinkedHashSet(1);
    private final Set<i<Throwable>> b = new LinkedHashSet(1);
    private final Handler c = new Handler(Looper.getMainLooper());
    private volatile m<T> d = null;

    private class a extends FutureTask<m<T>> {
        a(Callable<m<T>> callable) {
            super(callable);
        }

        /* access modifiers changed from: protected */
        public void done() {
            if (!isCancelled()) {
                try {
                    o.this.i((m) get());
                } catch (InterruptedException | ExecutionException e) {
                    o.this.i(new m(e));
                }
            }
        }
    }

    o(Callable<m<T>> callable, boolean z) {
        if (z) {
            try {
                i(callable.call());
            } catch (Throwable th) {
                i(new m<>(th));
            }
        } else {
            e.execute(new a(callable));
        }
    }

    static void b(o oVar, Object obj) {
        synchronized (oVar) {
            Iterator it = new ArrayList(oVar.a).iterator();
            while (it.hasNext()) {
                ((i) it.next()).a(obj);
            }
        }
    }

    static void c(o oVar, Throwable th) {
        synchronized (oVar) {
            ArrayList arrayList = new ArrayList(oVar.b);
            if (arrayList.isEmpty()) {
                zb.c("Lottie encountered an error but no failure listener was added:", th);
                return;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((i) it.next()).a(th);
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void i(m<T> mVar) {
        if (this.d == null) {
            this.d = mVar;
            this.c.post(new n(this));
            return;
        }
        throw new IllegalStateException("A task may only be set once.");
    }

    public synchronized o<T> e(i<Throwable> iVar) {
        if (!(this.d == null || this.d.a() == null)) {
            iVar.a(this.d.a());
        }
        this.b.add(iVar);
        return this;
    }

    public synchronized o<T> f(i<T> iVar) {
        if (!(this.d == null || this.d.b() == null)) {
            iVar.a(this.d.b());
        }
        this.a.add(iVar);
        return this;
    }

    public synchronized o<T> g(i<Throwable> iVar) {
        this.b.remove(iVar);
        return this;
    }

    public synchronized o<T> h(i<T> iVar) {
        this.a.remove(iVar);
        return this;
    }
}
