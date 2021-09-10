package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

public final class zzd extends zza implements zzf {
    zzd(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    @Override // com.google.android.gms.internal.measurement.zzf
    public final Bundle zzd(Bundle bundle) {
        Parcel zza = zza();
        zzc.zzd(zza, bundle);
        Parcel zzz = zzz(1, zza);
        Bundle bundle2 = (Bundle) zzc.zzc(zzz, Bundle.CREATOR);
        zzz.recycle();
        return bundle2;
    }
}
