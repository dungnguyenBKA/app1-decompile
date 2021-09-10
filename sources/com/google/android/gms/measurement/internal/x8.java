package com.google.android.gms.measurement.internal;

final class x8 implements Runnable {
    final /* synthetic */ k9 b;
    final /* synthetic */ AppMeasurementDynamiteService c;

    x8(AppMeasurementDynamiteService appMeasurementDynamiteService, k9 k9Var) {
        this.c = appMeasurementDynamiteService;
        this.b = k9Var;
    }

    public final void run() {
        this.c.b.D().u(this.b);
    }
}
