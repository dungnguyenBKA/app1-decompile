package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzlc;
import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final class w8 implements Callable<String> {
    final /* synthetic */ zzp b;
    final /* synthetic */ b9 c;

    w8(b9 b9Var, zzp zzp) {
        this.c = b9Var;
        this.b = zzp;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ String call() {
        zzlc.zzb();
        if (!this.c.U().u(null, v2.y0) || (this.c.j0(this.b.b).h() && f.c(this.b.w).h())) {
            return this.c.A(this.b).O();
        }
        this.c.c().v().a("Analytics storage consent denied. Returning null app instance id");
        return null;
    }
}
