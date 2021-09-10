package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzbfx extends zzgw implements zzbfv {
    zzbfx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.measurement.IMeasurementManager");
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final void zza(zv zvVar, zzbfu zzbfu) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzbfu);
        zzb(2, zzdo);
    }
}
