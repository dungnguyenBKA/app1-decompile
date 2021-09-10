package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public final class zzari extends zzgw implements zzarg {
    zzari(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzarg
    public final zzarf zzc(zv zvVar, zzane zzane, int i) {
        zzarf zzarf;
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzane);
        zzdo.writeInt(204204000);
        Parcel zza = zza(1, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzarf = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
            if (queryLocalInterface instanceof zzarf) {
                zzarf = (zzarf) queryLocalInterface;
            } else {
                zzarf = new zzarh(readStrongBinder);
            }
        }
        zza.recycle();
        return zzarf;
    }
}
