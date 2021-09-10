package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzs;

final class x5 implements Runnable {
    final /* synthetic */ zzs b;
    final /* synthetic */ AppMeasurementDynamiteService c;

    x5(AppMeasurementDynamiteService appMeasurementDynamiteService, zzs zzs) {
        this.c = appMeasurementDynamiteService;
        this.b = zzs;
    }

    public final void run() {
        this.c.b.P().T(this.b);
    }
}
