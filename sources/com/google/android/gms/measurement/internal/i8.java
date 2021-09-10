package com.google.android.gms.measurement.internal;

import android.os.Bundle;

final /* synthetic */ class i8 implements Runnable {
    private final j8 b;

    i8(j8 j8Var) {
        this.b = j8Var;
    }

    public final void run() {
        j8 j8Var = this.b;
        k8 k8Var = j8Var.d;
        long j = j8Var.b;
        long j2 = j8Var.c;
        k8Var.b.g();
        k8Var.b.a.c().u().a("Application going to the background");
        boolean z = true;
        if (k8Var.b.a.x().u(null, v2.u0)) {
            k8Var.b.a.y().v.b(true);
        }
        Bundle bundle = new Bundle();
        if (!k8Var.b.a.x().z()) {
            k8Var.b.e.b();
            if (k8Var.b.a.x().u(null, v2.l0)) {
                m8 m8Var = k8Var.b.e;
                long j3 = m8Var.b;
                m8Var.b = j2;
                bundle.putLong("_et", j2 - j3);
                z6.w(k8Var.b.a.O().r(true), bundle, true);
            } else {
                z = false;
            }
            k8Var.b.e.d(false, z, j2);
        }
        k8Var.b.a.D().R("auto", "_ab", j, bundle);
    }
}
