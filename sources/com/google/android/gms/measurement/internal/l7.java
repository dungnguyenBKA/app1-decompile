package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;

/* access modifiers changed from: package-private */
public final class l7 implements Runnable {
    final /* synthetic */ zzp b;
    final /* synthetic */ z7 c;

    l7(z7 z7Var, zzp zzp) {
        this.c = z7Var;
        this.b = zzp;
    }

    public final void run() {
        y2 y2Var = this.c.d;
        if (y2Var == null) {
            this.c.a.c().n().a("Failed to send measurementEnabled to service");
            return;
        }
        try {
            Objects.requireNonNull(this.b, "null reference");
            y2Var.y(this.b);
            this.c.C();
        } catch (RemoteException e) {
            this.c.a.c().n().b("Failed to send measurementEnabled to the service", e);
        }
    }
}
