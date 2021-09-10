package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzs;

final class j9 implements Runnable {
    final /* synthetic */ zzs b;
    final /* synthetic */ AppMeasurementDynamiteService c;

    j9(AppMeasurementDynamiteService appMeasurementDynamiteService, zzs zzs) {
        this.c = appMeasurementDynamiteService;
        this.b = zzs;
    }

    public final void run() {
        this.c.b.E().T(this.b, this.c.b.i());
    }
}
