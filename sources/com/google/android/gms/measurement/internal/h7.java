package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.Objects;

/* access modifiers changed from: package-private */
public final class h7 implements Runnable {
    final /* synthetic */ zzp b;
    final /* synthetic */ Bundle c;
    final /* synthetic */ z7 d;

    h7(z7 z7Var, zzp zzp, Bundle bundle) {
        this.d = z7Var;
        this.b = zzp;
        this.c = bundle;
    }

    public final void run() {
        y2 y2Var = this.d.d;
        if (y2Var == null) {
            this.d.a.c().n().a("Failed to send default event parameters to service");
            return;
        }
        try {
            Objects.requireNonNull(this.b, "null reference");
            y2Var.t(this.c, this.b);
        } catch (RemoteException e) {
            this.d.a.c().n().b("Failed to send default event parameters to service", e);
        }
    }
}
