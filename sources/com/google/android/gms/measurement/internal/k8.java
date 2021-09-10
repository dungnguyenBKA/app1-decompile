package com.google.android.gms.measurement.internal;

import com.vungle.warren.AdLoader;

/* access modifiers changed from: package-private */
public final class k8 {
    private j8 a;
    final /* synthetic */ o8 b;

    k8(o8 o8Var) {
        this.b = o8Var;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        this.b.g();
        if (this.a != null) {
            this.b.c.removeCallbacks(this.a);
        }
        if (this.b.a.x().u(null, v2.u0)) {
            this.b.a.y().v.b(false);
        }
    }

    /* access modifiers changed from: package-private */
    public final void b(long j) {
        this.a = new j8(this, this.b.a.a().a(), j);
        this.b.c.postDelayed(this.a, AdLoader.RETRY_DELAY);
    }
}
