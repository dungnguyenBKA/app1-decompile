package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzlc;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* access modifiers changed from: package-private */
public final class d7 implements Runnable {
    final /* synthetic */ AtomicReference b;
    final /* synthetic */ zzp c;
    final /* synthetic */ z7 d;

    d7(z7 z7Var, AtomicReference atomicReference, zzp zzp) {
        this.d = z7Var;
        this.b = atomicReference;
        this.c = zzp;
    }

    public final void run() {
        AtomicReference atomicReference;
        synchronized (this.b) {
            try {
                zzlc.zzb();
                if (!this.d.a.x().u(null, v2.w0) || this.d.a.y().s().h()) {
                    y2 y2Var = this.d.d;
                    if (y2Var == null) {
                        this.d.a.c().n().a("Failed to get app instance id");
                        this.b.notify();
                        return;
                    }
                    Objects.requireNonNull(this.c, "null reference");
                    this.b.set(y2Var.e(this.c));
                    String str = (String) this.b.get();
                    if (str != null) {
                        this.d.a.D().q(str);
                        this.d.a.y().l.b(str);
                    }
                    this.d.C();
                    atomicReference = this.b;
                    atomicReference.notify();
                    return;
                }
                this.d.a.c().s().a("Analytics storage consent denied; will not get app instance id");
                this.d.a.D().q(null);
                this.d.a.y().l.b(null);
                this.b.set(null);
                this.b.notify();
            } catch (RemoteException e) {
                this.d.a.c().n().b("Failed to get app instance id", e);
                atomicReference = this.b;
            } catch (Throwable th) {
                this.b.notify();
                throw th;
            }
        }
    }
}
