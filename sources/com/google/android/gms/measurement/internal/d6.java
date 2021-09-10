package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

final class d6 implements Runnable {
    final /* synthetic */ AtomicReference b;
    final /* synthetic */ l6 c;

    d6(l6 l6Var, AtomicReference atomicReference) {
        this.c = l6Var;
        this.b = atomicReference;
    }

    public final void run() {
        synchronized (this.b) {
            try {
                this.b.set(Integer.valueOf(this.c.a.x().r(this.c.a.d().o(), v2.N)));
                this.b.notify();
            } catch (Throwable th) {
                this.b.notify();
                throw th;
            }
        }
    }
}
