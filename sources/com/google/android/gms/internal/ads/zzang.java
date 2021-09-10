package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public final class zzang extends zzgw implements zzane {
    zzang(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzane
    public final zzanj zzdd(String str) {
        zzanj zzanj;
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        Parcel zza = zza(1, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzanj = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            if (queryLocalInterface instanceof zzanj) {
                zzanj = (zzanj) queryLocalInterface;
            } else {
                zzanj = new zzanl(readStrongBinder);
            }
        }
        zza.recycle();
        return zzanj;
    }

    @Override // com.google.android.gms.internal.ads.zzane
    public final boolean zzde(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        Parcel zza = zza(2, zzdo);
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzane
    public final zzapk zzdf(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        Parcel zza = zza(3, zzdo);
        zzapk zzaf = zzapn.zzaf(zza.readStrongBinder());
        zza.recycle();
        return zzaf;
    }
}
