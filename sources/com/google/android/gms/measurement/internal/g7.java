package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* access modifiers changed from: package-private */
public final class g7 implements Runnable {
    final /* synthetic */ r6 b;
    final /* synthetic */ z7 c;

    g7(z7 z7Var, r6 r6Var) {
        this.c = z7Var;
        this.b = r6Var;
    }

    public final void run() {
        y2 y2Var = this.c.d;
        if (y2Var == null) {
            this.c.a.c().n().a("Failed to send current screen to service");
            return;
        }
        try {
            r6 r6Var = this.b;
            if (r6Var == null) {
                y2Var.m(0, null, null, this.c.a.b().getPackageName());
            } else {
                y2Var.m(r6Var.c, r6Var.a, r6Var.b, this.c.a.b().getPackageName());
            }
            this.c.C();
        } catch (RemoteException e) {
            this.c.a.c().n().b("Failed to send current screen to the service", e);
        }
    }
}
