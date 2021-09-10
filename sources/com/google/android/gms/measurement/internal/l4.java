package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public final class l4 implements Runnable {
    final /* synthetic */ zzaa b;
    final /* synthetic */ zzp c;
    final /* synthetic */ c5 d;

    l4(c5 c5Var, zzaa zzaa, zzp zzp) {
        this.d = c5Var;
        this.b = zzaa;
        this.c = zzp;
    }

    public final void run() {
        this.d.b.o();
        if (this.b.d.o() == null) {
            this.d.b.z(this.b, this.c);
        } else {
            this.d.b.x(this.b, this.c);
        }
    }
}
