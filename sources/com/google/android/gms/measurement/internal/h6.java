package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public final class h6 implements Runnable {
    final /* synthetic */ f b;
    final /* synthetic */ int c;
    final /* synthetic */ long d;
    final /* synthetic */ boolean e;
    final /* synthetic */ l6 f;

    h6(l6 l6Var, f fVar, int i, long j, boolean z) {
        this.f = l6Var;
        this.b = fVar;
        this.c = i;
        this.d = j;
        this.e = z;
    }

    public final void run() {
        this.f.P(this.b);
        l6.I(this.f, this.b, this.c, this.d, false, this.e);
    }
}
