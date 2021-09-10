package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public final class v4 implements Runnable {
    final /* synthetic */ zzas b;
    final /* synthetic */ String c;
    final /* synthetic */ c5 d;

    v4(c5 c5Var, zzas zzas, String str) {
        this.d = c5Var;
        this.b = zzas;
        this.c = str;
    }

    public final void run() {
        this.d.b.o();
        this.d.b.l0(this.b, this.c);
    }
}
