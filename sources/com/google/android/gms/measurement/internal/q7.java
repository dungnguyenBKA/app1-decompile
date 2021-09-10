package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzs;
import java.util.ArrayList;
import java.util.Objects;

/* access modifiers changed from: package-private */
public final class q7 implements Runnable {
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ zzp d;
    final /* synthetic */ zzs e;
    final /* synthetic */ z7 f;

    q7(z7 z7Var, String str, String str2, zzp zzp, zzs zzs) {
        this.f = z7Var;
        this.b = str;
        this.c = str2;
        this.d = zzp;
        this.e = zzs;
    }

    public final void run() {
        j4 j4Var;
        ArrayList<Bundle> arrayList = new ArrayList<>();
        try {
            y2 y2Var = this.f.d;
            if (y2Var == null) {
                this.f.a.c().n().c("Failed to get conditional properties; not connected to service", this.b, this.c);
                j4Var = this.f.a;
            } else {
                Objects.requireNonNull(this.d, "null reference");
                arrayList = h9.W(y2Var.a(this.b, this.c, this.d));
                this.f.C();
                j4Var = this.f.a;
            }
        } catch (RemoteException e2) {
            this.f.a.c().n().d("Failed to get conditional properties; remote exception", this.b, this.c, e2);
            j4Var = this.f.a;
        } catch (Throwable th) {
            this.f.a.E().V(this.e, arrayList);
            throw th;
        }
        j4Var.E().V(this.e, arrayList);
    }
}
