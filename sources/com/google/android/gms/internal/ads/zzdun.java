package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzdun extends zzgw implements zzduo {
    zzdun(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.IGassService");
    }

    @Override // com.google.android.gms.internal.ads.zzduo
    public final zzdum zza(zzduk zzduk) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzduk);
        Parcel zza = zza(1, zzdo);
        zzdum zzdum = (zzdum) zzgx.zza(zza, zzdum.CREATOR);
        zza.recycle();
        return zzdum;
    }

    @Override // com.google.android.gms.internal.ads.zzduo
    public final void zza(zzduf zzduf) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzduf);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzduo
    public final zzduw zza(zzduu zzduu) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzduu);
        Parcel zza = zza(3, zzdo);
        zzduw zzduw = (zzduw) zzgx.zza(zza, zzduw.CREATOR);
        zza.recycle();
        return zzduw;
    }
}
