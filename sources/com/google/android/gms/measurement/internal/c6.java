package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

final class c6 implements Runnable {
    final /* synthetic */ AtomicReference b;
    final /* synthetic */ l6 c;

    c6(l6 l6Var, AtomicReference atomicReference) {
        this.c = l6Var;
        this.b = atomicReference;
    }

    public final void run() {
        synchronized (this.b) {
            try {
                this.b.set(Long.valueOf(this.c.a.x().q(this.c.a.d().o(), v2.M)));
                this.b.notify();
            } catch (Throwable th) {
                this.b.notify();
                throw th;
            }
        }
    }
}
