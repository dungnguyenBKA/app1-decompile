package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public final class m4 implements Runnable {
    final /* synthetic */ zzaa b;
    final /* synthetic */ c5 c;

    m4(c5 c5Var, zzaa zzaa) {
        this.c = c5Var;
        this.b = zzaa;
    }

    public final void run() {
        this.c.b.o();
        if (this.b.d.o() == null) {
            this.c.b.y(this.b);
        } else {
            this.c.b.w(this.b);
        }
    }
}
