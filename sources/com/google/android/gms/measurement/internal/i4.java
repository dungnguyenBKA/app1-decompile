package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public final class i4 implements Runnable {
    final /* synthetic */ l5 b;
    final /* synthetic */ j4 c;

    i4(j4 j4Var, l5 l5Var) {
        this.c = j4Var;
        this.b = l5Var;
    }

    public final void run() {
        j4.s(this.c, this.b);
        this.c.w(this.b.g);
    }
}
