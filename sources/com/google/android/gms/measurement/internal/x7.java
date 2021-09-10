package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzs;

final class x7 implements Runnable {
    final /* synthetic */ zzs b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ boolean e;
    final /* synthetic */ AppMeasurementDynamiteService f;

    x7(AppMeasurementDynamiteService appMeasurementDynamiteService, zzs zzs, String str, String str2, boolean z) {
        this.f = appMeasurementDynamiteService;
        this.b = zzs;
        this.c = str;
        this.d = str2;
        this.e = z;
    }

    public final void run() {
        this.f.b.P().P(this.b, this.c, this.d, this.e);
    }
}
