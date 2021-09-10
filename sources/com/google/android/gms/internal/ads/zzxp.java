package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzxp extends zzgw implements zzxq {
    zzxp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzxq
    public final IBinder zza(zv zvVar, zzvs zzvs, String str, zzane zzane, int i, int i2) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzvs);
        zzdo.writeString(str);
        zzgx.zza(zzdo, zzane);
        zzdo.writeInt(204204000);
        zzdo.writeInt(i2);
        Parcel zza = zza(2, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        zza.recycle();
        return readStrongBinder;
    }
}
