package com.google.android.gms.measurement.internal;

final class q5 implements Runnable {
    final /* synthetic */ long b;
    final /* synthetic */ l6 c;

    q5(l6 l6Var, long j) {
        this.c = l6Var;
        this.b = j;
    }

    public final void run() {
        this.c.a.y().p.b(this.b);
        this.c.a.c().u().b("Session timeout duration set", Long.valueOf(this.b));
    }
}
