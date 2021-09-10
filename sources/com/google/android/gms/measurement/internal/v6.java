package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public final class v6 implements Runnable {
    final /* synthetic */ long b;
    final /* synthetic */ z6 c;

    v6(z6 z6Var, long j) {
        this.c = z6Var;
        this.b = j;
    }

    public final void run() {
        this.c.a.f().j(this.b);
        this.c.e = null;
    }
}
