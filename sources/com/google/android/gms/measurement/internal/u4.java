package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public final class u4 implements Runnable {
    final /* synthetic */ zzas b;
    final /* synthetic */ zzp c;
    final /* synthetic */ c5 d;

    u4(c5 c5Var, zzas zzas, zzp zzp) {
        this.d = c5Var;
        this.b = zzas;
        this.c = zzp;
    }

    public final void run() {
        zzas O = this.d.O(this.b, this.c);
        this.d.b.o();
        this.d.b.f(O, this.c);
    }
}
