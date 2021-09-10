package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzv;

final class l9 implements k5 {
    public final zzv a;
    final /* synthetic */ AppMeasurementDynamiteService b;

    l9(AppMeasurementDynamiteService appMeasurementDynamiteService, zzv zzv) {
        this.b = appMeasurementDynamiteService;
        this.a = zzv;
    }

    @Override // com.google.android.gms.measurement.internal.k5
    public final void a(String str, String str2, Bundle bundle, long j) {
        try {
            this.a.zzd(str, str2, bundle, j);
        } catch (RemoteException e) {
            j4 j4Var = this.b.b;
            if (j4Var != null) {
                j4Var.c().q().b("Event listener threw exception", e);
            }
        }
    }
}
