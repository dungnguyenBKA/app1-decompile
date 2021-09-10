package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzdsv extends zzgw implements zzdst {
    zzdsv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.omid.IOmid");
    }

    @Override // com.google.android.gms.internal.ads.zzdst
    public final String getVersion() {
        Parcel zza = zza(6, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzdst
    public final zv zza(String str, zv zvVar, String str2, String str3, String str4, String str5) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzgx.zza(zzdo, zvVar);
        zzdo.writeString(str2);
        zzdo.writeString(str3);
        zzdo.writeString(str4);
        zzdo.writeString(str5);
        return ic.A(zza(9, zzdo));
    }

    @Override // com.google.android.gms.internal.ads.zzdst
    public final void zzab(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(4, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzdst
    public final void zzac(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(7, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzdst
    public final boolean zzav(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        Parcel zza = zza(2, zzdo);
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzdst
    public final zv zzb(String str, zv zvVar, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzgx.zza(zzdo, zvVar);
        zzdo.writeString(str2);
        zzdo.writeString(str3);
        zzdo.writeString(str4);
        zzdo.writeString(str5);
        zzdo.writeString(str6);
        zzdo.writeString(str7);
        zzdo.writeString(str8);
        return ic.A(zza(11, zzdo));
    }

    @Override // com.google.android.gms.internal.ads.zzdst
    public final void zzc(zv zvVar, zv zvVar2) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zvVar2);
        zzb(5, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzdst
    public final void zzd(zv zvVar, zv zvVar2) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zvVar2);
        zzb(8, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzdst
    public final zv zza(String str, zv zvVar, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzgx.zza(zzdo, zvVar);
        zzdo.writeString(str2);
        zzdo.writeString(str3);
        zzdo.writeString(str4);
        zzdo.writeString(str5);
        zzdo.writeString(str6);
        zzdo.writeString(str7);
        zzdo.writeString(str8);
        return ic.A(zza(10, zzdo));
    }
}
