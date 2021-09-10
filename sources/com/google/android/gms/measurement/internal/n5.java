package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public final /* synthetic */ class n5 implements Runnable {
    private final l6 b;

    n5(l6 l6Var) {
        this.b = l6Var;
    }

    public final void run() {
        l6 l6Var = this.b;
        l6Var.g();
        if (!l6Var.a.y().w.a()) {
            long a = l6Var.a.y().x.a();
            l6Var.a.y().x.b(1 + a);
            l6Var.a.x();
            if (a >= 5) {
                l6Var.a.c().q().a("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                l6Var.a.y().w.b(true);
                return;
            }
            l6Var.a.q();
            return;
        }
        l6Var.a.c().u().a("Deferred Deep Link already retrieved. Not fetching again.");
    }
}
