package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;

/* access modifiers changed from: package-private */
public final class f7 implements Runnable {
    final /* synthetic */ zzp b;
    final /* synthetic */ z7 c;

    f7(z7 z7Var, zzp zzp) {
        this.c = z7Var;
        this.b = zzp;
    }

    public final void run() {
        y2 y2Var = this.c.d;
        if (y2Var == null) {
            this.c.a.c().n().a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            Objects.requireNonNull(this.b, "null reference");
            y2Var.H(this.b);
            this.c.a.G().t();
            this.c.J(y2Var, null, this.b);
            this.c.C();
        } catch (RemoteException e) {
            this.c.a.c().n().b("Failed to send app launch to the service", e);
        }
    }
}
