package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public final class g6 implements Runnable {
    final /* synthetic */ f b;
    final /* synthetic */ long c;
    final /* synthetic */ int d;
    final /* synthetic */ long e;
    final /* synthetic */ boolean f;
    final /* synthetic */ l6 g;

    g6(l6 l6Var, f fVar, long j, int i, long j2, boolean z) {
        this.g = l6Var;
        this.b = fVar;
        this.c = j;
        this.d = i;
        this.e = j2;
        this.f = z;
    }

    public final void run() {
        this.g.P(this.b);
        this.g.s(this.c, false);
        l6.I(this.g, this.b, this.d, this.e, true, this.f);
    }
}
