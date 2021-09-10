package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzs;

/* access modifiers changed from: package-private */
public final class j7 implements Runnable {
    final /* synthetic */ zzas b;
    final /* synthetic */ String c;
    final /* synthetic */ zzs d;
    final /* synthetic */ z7 e;

    j7(z7 z7Var, zzas zzas, String str, zzs zzs) {
        this.e = z7Var;
        this.b = zzas;
        this.c = str;
        this.d = zzs;
    }

    public final void run() {
        j4 j4Var;
        byte[] bArr = null;
        try {
            y2 y2Var = this.e.d;
            if (y2Var == null) {
                this.e.a.c().n().a("Discarding data. Failed to send event to service to bundle");
                j4Var = this.e.a;
            } else {
                bArr = y2Var.v(this.b, this.c);
                this.e.C();
                j4Var = this.e.a;
            }
        } catch (RemoteException e2) {
            this.e.a.c().n().b("Failed to send event to the service to bundle", e2);
            j4Var = this.e.a;
        } catch (Throwable th) {
            this.e.a.E().S(this.d, null);
            throw th;
        }
        j4Var.E().S(this.d, bArr);
    }
}
