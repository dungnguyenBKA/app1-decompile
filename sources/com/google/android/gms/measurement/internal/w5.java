package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

final class w5 implements Runnable {
    final /* synthetic */ AtomicReference b;
    final /* synthetic */ l6 c;

    w5(l6 l6Var, AtomicReference atomicReference) {
        this.c = l6Var;
        this.b = atomicReference;
    }

    public final void run() {
        synchronized (this.b) {
            try {
                this.b.set(Boolean.valueOf(this.c.a.x().u(this.c.a.d().o(), v2.K)));
                this.b.notify();
            } catch (Throwable th) {
                this.b.notify();
                throw th;
            }
        }
    }
}
