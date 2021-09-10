package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzaez extends zzgw implements zzaew {
    zzaez(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final IBinder zza(zv zvVar, zv zvVar2, zv zvVar3, int i) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zvVar2);
        zzgx.zza(zzdo, zvVar3);
        zzdo.writeInt(204204000);
        Parcel zza = zza(1, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        zza.recycle();
        return readStrongBinder;
    }
}
