package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

public final class zzq extends zza implements zzs {
    zzq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.zzs
    public final void zzb(Bundle bundle) {
        Parcel zza = zza();
        zzc.zzd(zza, bundle);
        zzc(1, zza);
    }
}
