package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzs;
import java.util.List;
import java.util.Objects;

/* access modifiers changed from: package-private */
public final class a7 implements Runnable {
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ zzp d;
    final /* synthetic */ boolean e;
    final /* synthetic */ zzs f;
    final /* synthetic */ z7 g;

    a7(z7 z7Var, String str, String str2, zzp zzp, boolean z, zzs zzs) {
        this.g = z7Var;
        this.b = str;
        this.c = str2;
        this.d = zzp;
        this.e = z;
        this.f = zzs;
    }

    public final void run() {
        Throwable th;
        Bundle bundle;
        RemoteException e2;
        Bundle bundle2 = new Bundle();
        try {
            y2 y2Var = this.g.d;
            if (y2Var == null) {
                this.g.a.c().n().c("Failed to get user properties; not connected to service", this.b, this.c);
                this.g.a.E().U(this.f, bundle2);
                return;
            }
            Objects.requireNonNull(this.d, "null reference");
            List<zzkg> o = y2Var.o(this.b, this.c, this.e, this.d);
            bundle = new Bundle();
            if (o != null) {
                for (zzkg zzkg : o) {
                    String str = zzkg.f;
                    if (str != null) {
                        bundle.putString(zzkg.c, str);
                    } else {
                        Long l = zzkg.e;
                        if (l != null) {
                            bundle.putLong(zzkg.c, l.longValue());
                        } else {
                            Double d2 = zzkg.h;
                            if (d2 != null) {
                                bundle.putDouble(zzkg.c, d2.doubleValue());
                            }
                        }
                    }
                }
            }
            try {
                this.g.C();
                this.g.a.E().U(this.f, bundle);
            } catch (RemoteException e3) {
                e2 = e3;
                try {
                    this.g.a.c().n().c("Failed to get user properties; remote exception", this.b, e2);
                    this.g.a.E().U(this.f, bundle);
                } catch (Throwable th2) {
                    th = th2;
                    bundle2 = bundle;
                    this.g.a.E().U(this.f, bundle2);
                    throw th;
                }
            }
        } catch (RemoteException e4) {
            bundle = bundle2;
            e2 = e4;
            this.g.a.c().n().c("Failed to get user properties; remote exception", this.b, e2);
            this.g.a.E().U(this.f, bundle);
        } catch (Throwable th3) {
            th = th3;
            this.g.a.E().U(this.f, bundle2);
            throw th;
        }
    }
}
