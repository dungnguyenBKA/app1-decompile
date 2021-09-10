package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzafc extends zzgw implements zzafd {
    zzafc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzafd
    public final IBinder zzb(zv zvVar, zv zvVar2, zv zvVar3) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zvVar2);
        zzgx.zza(zzdo, zvVar3);
        Parcel zza = zza(1, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        zza.recycle();
        return readStrongBinder;
    }
}
