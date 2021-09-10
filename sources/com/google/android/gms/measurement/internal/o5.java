package com.google.android.gms.measurement.internal;

final class o5 implements Runnable {
    final /* synthetic */ boolean b;
    final /* synthetic */ l6 c;

    o5(l6 l6Var, boolean z) {
        this.c = l6Var;
        this.b = z;
    }

    public final void run() {
        boolean j = this.c.a.j();
        boolean i = this.c.a.i();
        this.c.a.h(this.b);
        if (i == this.b) {
            this.c.a.c().v().b("Default data collection state already set to", Boolean.valueOf(this.b));
        }
        if (this.c.a.j() == j || this.c.a.j() != this.c.a.i()) {
            this.c.a.c().s().c("Default data collection is different than actual status", Boolean.valueOf(this.b), Boolean.valueOf(j));
        }
        this.c.L();
    }
}
