package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public final class g8 implements Runnable {
    final /* synthetic */ long b;
    final /* synthetic */ o8 c;

    g8(o8 o8Var, long j) {
        this.c = o8Var;
        this.b = j;
    }

    public final void run() {
        o8.n(this.c, this.b);
    }
}
