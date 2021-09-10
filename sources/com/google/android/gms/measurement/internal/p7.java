package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* access modifiers changed from: package-private */
public final class p7 implements Runnable {
    final /* synthetic */ AtomicReference b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ zzp e;
    final /* synthetic */ z7 f;

    p7(z7 z7Var, AtomicReference atomicReference, String str, String str2, zzp zzp) {
        this.f = z7Var;
        this.b = atomicReference;
        this.c = str;
        this.d = str2;
        this.e = zzp;
    }

    public final void run() {
        AtomicReference atomicReference;
        synchronized (this.b) {
            try {
                y2 y2Var = this.f.d;
                if (y2Var == null) {
                    this.f.a.c().n().d("(legacy) Failed to get conditional properties; not connected to service", null, this.c, this.d);
                    this.b.set(Collections.emptyList());
                    this.b.notify();
                    return;
                }
                if (TextUtils.isEmpty(null)) {
                    Objects.requireNonNull(this.e, "null reference");
                    this.b.set(y2Var.a(this.c, this.d, this.e));
                } else {
                    this.b.set(y2Var.p(null, this.c, this.d));
                }
                this.f.C();
                atomicReference = this.b;
                atomicReference.notify();
            } catch (RemoteException e2) {
                this.f.a.c().n().d("(legacy) Failed to get conditional properties; remote exception", null, this.c, e2);
                this.b.set(Collections.emptyList());
                atomicReference = this.b;
            } catch (Throwable th) {
                this.b.notify();
                throw th;
            }
        }
    }
}
