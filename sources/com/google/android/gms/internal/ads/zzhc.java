package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzhc extends zzgw implements zzhb {
    zzhc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.clearcut.IClearcut");
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void log() {
        zzb(3, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zza(zv zvVar, String str) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzdo.writeString(str);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zzc(byte[] bArr) {
        Parcel zzdo = zzdo();
        zzdo.writeByteArray(bArr);
        zzb(5, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zzs(int i) {
        Parcel zzdo = zzdo();
        zzdo.writeInt(i);
        zzb(6, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zzt(int i) {
        Parcel zzdo = zzdo();
        zzdo.writeInt(i);
        zzb(7, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zza(int[] iArr) {
        Parcel zzdo = zzdo();
        zzdo.writeIntArray(null);
        zzb(4, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zza(zv zvVar, String str, String str2) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzdo.writeString(str);
        zzdo.writeString(null);
        zzb(8, zzdo);
    }
}
