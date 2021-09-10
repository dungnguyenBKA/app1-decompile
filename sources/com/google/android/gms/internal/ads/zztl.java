package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zztl extends zzgw implements zzti {
    zztl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService");
    }

    @Override // com.google.android.gms.internal.ads.zzti
    public final zztc zza(zzth zzth) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzth);
        Parcel zza = zza(1, zzdo);
        zztc zztc = (zztc) zzgx.zza(zza, zztc.CREATOR);
        zza.recycle();
        return zztc;
    }

    @Override // com.google.android.gms.internal.ads.zzti
    public final long zzb(zzth zzth) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzth);
        Parcel zza = zza(3, zzdo);
        long readLong = zza.readLong();
        zza.recycle();
        return readLong;
    }

    @Override // com.google.android.gms.internal.ads.zzti
    public final zztc zzc(zzth zzth) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzth);
        Parcel zza = zza(2, zzdo);
        zztc zztc = (zztc) zzgx.zza(zza, zztc.CREATOR);
        zza.recycle();
        return zztc;
    }
}
