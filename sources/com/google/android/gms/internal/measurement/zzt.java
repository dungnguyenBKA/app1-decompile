package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

public final class zzt extends zza implements zzv {
    zzt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void zzd(String str, String str2, Bundle bundle, long j) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzc.zzd(zza, bundle);
        zza.writeLong(j);
        zzc(1, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final int zze() {
        Parcel zzz = zzz(2, zza());
        int readInt = zzz.readInt();
        zzz.recycle();
        return readInt;
    }
}
