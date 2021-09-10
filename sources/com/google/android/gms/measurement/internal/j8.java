package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public final class j8 implements Runnable {
    final long b;
    final long c;
    final /* synthetic */ k8 d;

    j8(k8 k8Var, long j, long j2) {
        this.d = k8Var;
        this.b = j;
        this.c = j2;
    }

    public final void run() {
        this.d.b.a.e().q(new i8(this));
    }
}
