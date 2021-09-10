package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzlc;
import com.google.android.gms.internal.measurement.zzs;
import java.util.Objects;

/* access modifiers changed from: package-private */
public final class e7 implements Runnable {
    final /* synthetic */ zzp b;
    final /* synthetic */ zzs c;
    final /* synthetic */ z7 d;

    e7(z7 z7Var, zzp zzp, zzs zzs) {
        this.d = z7Var;
        this.b = zzp;
        this.c = zzs;
    }

    public final void run() {
        j4 j4Var;
        String str = null;
        try {
            zzlc.zzb();
            if (!this.d.a.x().u(null, v2.w0) || this.d.a.y().s().h()) {
                y2 y2Var = this.d.d;
                if (y2Var == null) {
                    this.d.a.c().n().a("Failed to get app instance id");
                    j4Var = this.d.a;
                } else {
                    Objects.requireNonNull(this.b, "null reference");
                    str = y2Var.e(this.b);
                    if (str != null) {
                        this.d.a.D().q(str);
                        this.d.a.y().l.b(str);
                    }
                    this.d.C();
                    j4Var = this.d.a;
                }
                j4Var.E().P(this.c, str);
            }
            this.d.a.c().s().a("Analytics storage consent denied; will not get app instance id");
            this.d.a.D().q(null);
            this.d.a.y().l.b(null);
            j4Var = this.d.a;
            j4Var.E().P(this.c, str);
        } catch (RemoteException e) {
            this.d.a.c().n().b("Failed to get app instance id", e);
            j4Var = this.d.a;
        } catch (Throwable th) {
            this.d.a.E().P(this.c, null);
            throw th;
        }
    }
}
