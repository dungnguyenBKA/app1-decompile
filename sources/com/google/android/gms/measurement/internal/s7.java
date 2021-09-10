package com.google.android.gms.measurement.internal;

final class s7 implements Runnable {
    final /* synthetic */ y2 b;
    final /* synthetic */ y7 c;

    s7(y7 y7Var, y2 y2Var) {
        this.c = y7Var;
        this.b = y2Var;
    }

    public final void run() {
        synchronized (this.c) {
            this.c.a = false;
            if (!this.c.c.G()) {
                this.c.c.a.c().v().a("Connected to service");
                this.c.c.r(this.b);
            }
        }
    }
}
