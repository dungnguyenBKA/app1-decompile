package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzatj extends zzgw implements zzath {
    zzatj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzath
    public final zzatd zza(zzatb zzatb) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzatb);
        Parcel zza = zza(1, zzdo);
        zzatd zzatd = (zzatd) zzgx.zza(zza, zzatd.CREATOR);
        zza.recycle();
        return zzatd;
    }

    @Override // com.google.android.gms.internal.ads.zzath
    public final void zzb(zzatq zzatq, zzatk zzatk) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzatq);
        zzgx.zza(zzdo, zzatk);
        zzb(5, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzath
    public final void zzc(zzatq zzatq, zzatk zzatk) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzatq);
        zzgx.zza(zzdo, zzatk);
        zzb(6, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzath
    public final void zza(zzatb zzatb, zzati zzati) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzatb);
        zzgx.zza(zzdo, zzati);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzath
    public final void zza(zzatq zzatq, zzatk zzatk) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzatq);
        zzgx.zza(zzdo, zzatk);
        zzb(4, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzath
    public final void zza(String str, zzatk zzatk) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzgx.zza(zzdo, zzatk);
        zzb(7, zzdo);
    }
}
