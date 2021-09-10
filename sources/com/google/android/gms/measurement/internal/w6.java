package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public final class w6 implements Runnable {
    final /* synthetic */ r6 b;
    final /* synthetic */ long c;
    final /* synthetic */ z6 d;

    w6(z6 z6Var, r6 r6Var, long j) {
        this.d = z6Var;
        this.b = r6Var;
        this.c = j;
    }

    public final void run() {
        this.d.p(this.b, false, this.c);
        z6 z6Var = this.d;
        z6Var.e = null;
        z6Var.a.P().V(null);
    }
}
