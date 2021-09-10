package com.google.android.gms.measurement.internal;

import java.util.Objects;

/* access modifiers changed from: package-private */
public final class b7 implements Runnable {
    final /* synthetic */ zzp b;
    final /* synthetic */ boolean c;
    final /* synthetic */ zzkg d;
    final /* synthetic */ z7 e;

    b7(z7 z7Var, zzp zzp, boolean z, zzkg zzkg) {
        this.e = z7Var;
        this.b = zzp;
        this.c = z;
        this.d = zzkg;
    }

    public final void run() {
        zzkg zzkg;
        y2 y2Var = this.e.d;
        if (y2Var == null) {
            this.e.a.c().n().a("Discarding data. Failed to set user property");
            return;
        }
        Objects.requireNonNull(this.b, "null reference");
        z7 z7Var = this.e;
        if (this.c) {
            zzkg = null;
        } else {
            zzkg = this.d;
        }
        z7Var.J(y2Var, zzkg, this.b);
        this.e.C();
    }
}
