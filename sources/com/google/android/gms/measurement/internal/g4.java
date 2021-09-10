package com.google.android.gms.measurement.internal;

import java.lang.Thread;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class g4 extends e5 {
    private static final AtomicLong k = new AtomicLong(Long.MIN_VALUE);
    private f4 c;
    private f4 d;
    private final PriorityBlockingQueue<e4<?>> e = new PriorityBlockingQueue<>();
    private final BlockingQueue<e4<?>> f = new LinkedBlockingQueue();
    private final Thread.UncaughtExceptionHandler g = new d4(this, "Thread death: Uncaught exception on worker thread");
    private final Thread.UncaughtExceptionHandler h = new d4(this, "Thread death: Uncaught exception on network thread");
    private final Object i = new Object();
    private final Semaphore j = new Semaphore(2);

    g4(j4 j4Var) {
        super(j4Var);
    }

    private final void B(e4<?> e4Var) {
        synchronized (this.i) {
            this.e.add(e4Var);
            f4 f4Var = this.c;
            if (f4Var == null) {
                f4 f4Var2 = new f4(this, "Measurement Worker", this.e);
                this.c = f4Var2;
                f4Var2.setUncaughtExceptionHandler(this.g);
                this.c.start();
            } else {
                f4Var.a();
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.d5
    public final void f() {
        if (Thread.currentThread() != this.d) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    @Override // com.google.android.gms.measurement.internal.d5
    public final void g() {
        if (Thread.currentThread() != this.c) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.measurement.internal.e5
    public final boolean h() {
        return false;
    }

    public final boolean n() {
        return Thread.currentThread() == this.c;
    }

    public final <V> Future<V> o(Callable<V> callable) {
        k();
        e4<?> e4Var = new e4<>(this, callable, false);
        if (Thread.currentThread() == this.c) {
            if (!this.e.isEmpty()) {
                this.a.c().q().a("Callable skipped the worker queue.");
            }
            e4Var.run();
        } else {
            B(e4Var);
        }
        return e4Var;
    }

    public final <V> Future<V> p(Callable<V> callable) {
        k();
        e4<?> e4Var = new e4<>(this, callable, true);
        if (Thread.currentThread() == this.c) {
            e4Var.run();
        } else {
            B(e4Var);
        }
        return e4Var;
    }

    public final void q(Runnable runnable) {
        k();
        Objects.requireNonNull(runnable, "null reference");
        B(new e4<>(this, runnable, false, "Task exception on worker thread"));
    }

    /* access modifiers changed from: package-private */
    public final <T> T r(AtomicReference<T> atomicReference, long j2, String str, Runnable runnable) {
        String str2;
        synchronized (atomicReference) {
            this.a.e().q(runnable);
            try {
                atomicReference.wait(j2);
            } catch (InterruptedException unused) {
                g3 q = this.a.c().q();
                if (str.length() != 0) {
                    str2 = "Interrupted waiting for ".concat(str);
                } else {
                    str2 = new String("Interrupted waiting for ");
                }
                q.a(str2);
                return null;
            }
        }
        T t = atomicReference.get();
        if (t == null) {
            this.a.c().q().a(str.length() != 0 ? "Timed out waiting for ".concat(str) : new String("Timed out waiting for "));
        }
        return t;
    }

    public final void s(Runnable runnable) {
        k();
        B(new e4<>(this, runnable, true, "Task exception on worker thread"));
    }

    public final void t(Runnable runnable) {
        k();
        e4<?> e4Var = new e4<>(this, runnable, false, "Task exception on network thread");
        synchronized (this.i) {
            this.f.add(e4Var);
            f4 f4Var = this.d;
            if (f4Var == null) {
                f4 f4Var2 = new f4(this, "Measurement Network", this.f);
                this.d = f4Var2;
                f4Var2.setUncaughtExceptionHandler(this.h);
                this.d.start();
            } else {
                f4Var.a();
            }
        }
    }
}
