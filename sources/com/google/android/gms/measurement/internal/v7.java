package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;

final class v7 implements Runnable {
    final /* synthetic */ y7 b;

    v7(y7 y7Var) {
        this.b = y7Var;
    }

    public final void run() {
        z7 z7Var = this.b.c;
        Context b2 = z7Var.a.b();
        this.b.c.a.zzas();
        z7.w(z7Var, new ComponentName(b2, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
