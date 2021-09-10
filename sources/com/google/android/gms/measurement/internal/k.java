package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public final class k implements Runnable {
    final /* synthetic */ f5 b;
    final /* synthetic */ l c;

    k(l lVar, f5 f5Var) {
        this.c = lVar;
        this.b = f5Var;
    }

    public final void run() {
        this.b.zzas();
        if (u9.a()) {
            this.b.e().q(this);
            return;
        }
        boolean c2 = this.c.c();
        this.c.c = 0;
        if (c2) {
            this.c.a();
        }
    }
}
