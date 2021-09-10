package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public final class z0 implements Runnable {
    final /* synthetic */ long b;
    final /* synthetic */ a2 c;

    z0(a2 a2Var, long j) {
        this.c = a2Var;
        this.b = j;
    }

    public final void run() {
        this.c.p(this.b);
    }
}
