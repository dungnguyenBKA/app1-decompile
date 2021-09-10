package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* access modifiers changed from: package-private */
public final class t5 implements Runnable {
    final /* synthetic */ long b;
    final /* synthetic */ l6 c;

    t5(l6 l6Var, long j) {
        this.c = l6Var;
        this.b = j;
    }

    public final void run() {
        this.c.s(this.b, true);
        this.c.a.P().S(new AtomicReference<>());
    }
}
