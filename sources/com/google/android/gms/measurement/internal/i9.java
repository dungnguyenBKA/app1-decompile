package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzs;

final class i9 implements Runnable {
    final /* synthetic */ zzs b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ AppMeasurementDynamiteService e;

    i9(AppMeasurementDynamiteService appMeasurementDynamiteService, zzs zzs, String str, String str2) {
        this.e = appMeasurementDynamiteService;
        this.b = zzs;
        this.c = str;
        this.d = str2;
    }

    public final void run() {
        this.e.b.P().N(this.b, this.c, this.d);
    }
}
