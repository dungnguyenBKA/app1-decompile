package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public final class d8 implements Runnable {
    final /* synthetic */ b9 b;
    final /* synthetic */ Runnable c;

    d8(b9 b9Var, Runnable runnable) {
        this.b = b9Var;
        this.c = runnable;
    }

    public final void run() {
        this.b.o();
        this.b.n(this.c);
        this.b.j();
    }
}
