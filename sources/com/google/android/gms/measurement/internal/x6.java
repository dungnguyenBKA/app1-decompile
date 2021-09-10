package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzs;

final class x6 implements Runnable {
    final /* synthetic */ zzs b;
    final /* synthetic */ zzas c;
    final /* synthetic */ String d;
    final /* synthetic */ AppMeasurementDynamiteService e;

    x6(AppMeasurementDynamiteService appMeasurementDynamiteService, zzs zzs, zzas zzas, String str) {
        this.e = appMeasurementDynamiteService;
        this.b = zzs;
        this.c = zzas;
        this.d = str;
    }

    public final void run() {
        this.e.b.P().t(this.b, this.c, this.d);
    }
}
