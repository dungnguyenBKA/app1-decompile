package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public final class x4 implements Runnable {
    final /* synthetic */ zzkg b;
    final /* synthetic */ zzp c;
    final /* synthetic */ c5 d;

    x4(c5 c5Var, zzkg zzkg, zzp zzp) {
        this.d = c5Var;
        this.b = zzkg;
        this.c = zzp;
    }

    public final void run() {
        this.d.b.o();
        if (this.b.o() == null) {
            this.d.b.r(this.b, this.c);
        } else {
            this.d.b.q(this.b, this.c);
        }
    }
}
