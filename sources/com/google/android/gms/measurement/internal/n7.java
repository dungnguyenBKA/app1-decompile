package com.google.android.gms.measurement.internal;

import java.util.Objects;

/* access modifiers changed from: package-private */
public final class n7 implements Runnable {
    final /* synthetic */ zzp b;
    final /* synthetic */ boolean c;
    final /* synthetic */ zzas d;
    final /* synthetic */ z7 e;

    n7(z7 z7Var, zzp zzp, boolean z, zzas zzas, String str) {
        this.e = z7Var;
        this.b = zzp;
        this.c = z;
        this.d = zzas;
    }

    public final void run() {
        zzas zzas;
        y2 y2Var = this.e.d;
        if (y2Var == null) {
            this.e.a.c().n().a("Discarding data. Failed to send event to service");
            return;
        }
        Objects.requireNonNull(this.b, "null reference");
        z7 z7Var = this.e;
        if (this.c) {
            zzas = null;
        } else {
            zzas = this.d;
        }
        z7Var.J(y2Var, zzas, this.b);
        this.e.C();
    }
}
