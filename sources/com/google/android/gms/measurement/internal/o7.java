package com.google.android.gms.measurement.internal;

import java.util.Objects;

/* access modifiers changed from: package-private */
public final class o7 implements Runnable {
    final /* synthetic */ zzp b;
    final /* synthetic */ boolean c;
    final /* synthetic */ zzaa d;
    final /* synthetic */ z7 e;

    o7(z7 z7Var, zzp zzp, boolean z, zzaa zzaa, zzaa zzaa2) {
        this.e = z7Var;
        this.b = zzp;
        this.c = z;
        this.d = zzaa;
    }

    public final void run() {
        zzaa zzaa;
        y2 y2Var = this.e.d;
        if (y2Var == null) {
            this.e.a.c().n().a("Discarding data. Failed to send conditional user property to service");
            return;
        }
        Objects.requireNonNull(this.b, "null reference");
        z7 z7Var = this.e;
        if (this.c) {
            zzaa = null;
        } else {
            zzaa = this.d;
        }
        z7Var.J(y2Var, zzaa, this.b);
        this.e.C();
    }
}
