package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;

/* access modifiers changed from: package-private */
public final class c7 implements Runnable {
    final /* synthetic */ zzp b;
    final /* synthetic */ z7 c;

    c7(z7 z7Var, zzp zzp) {
        this.c = z7Var;
        this.b = zzp;
    }

    public final void run() {
        y2 y2Var = this.c.d;
        if (y2Var == null) {
            this.c.a.c().n().a("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            Objects.requireNonNull(this.b, "null reference");
            y2Var.s(this.b);
        } catch (RemoteException e) {
            this.c.a.c().n().b("Failed to reset data on the service: remote exception", e);
        }
        this.c.C();
    }
}
