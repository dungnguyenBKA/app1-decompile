package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

final class b6 implements Runnable {
    final /* synthetic */ AtomicReference b;
    final /* synthetic */ l6 c;

    b6(l6 l6Var, AtomicReference atomicReference) {
        this.c = l6Var;
        this.b = atomicReference;
    }

    public final void run() {
        synchronized (this.b) {
            try {
                this.b.set(this.c.a.x().p(this.c.a.d().o(), v2.L));
                this.b.notify();
            } catch (Throwable th) {
                this.b.notify();
                throw th;
            }
        }
    }
}
