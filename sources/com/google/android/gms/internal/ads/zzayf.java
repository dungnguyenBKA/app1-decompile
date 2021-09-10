package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public final class zzayf extends zzgw implements zzayd {
    zzayf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final zzaxy zze(zv zvVar, zzane zzane, int i) {
        zzaxy zzaxy;
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzane);
        zzdo.writeInt(204204000);
        Parcel zza = zza(2, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzaxy = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
            if (queryLocalInterface instanceof zzaxy) {
                zzaxy = (zzaxy) queryLocalInterface;
            } else {
                zzaxy = new zzaya(readStrongBinder);
            }
        }
        zza.recycle();
        return zzaxy;
    }
}
