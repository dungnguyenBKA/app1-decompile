package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

public final class zzyi extends zzgw implements zzyg {
    zzyi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final String getVersionString() {
        Parcel zza = zza(9, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void initialize() {
        zzb(1, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void setAppMuted(boolean z) {
        Parcel zzdo = zzdo();
        zzgx.writeBoolean(zzdo, z);
        zzb(4, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void setAppVolume(float f) {
        Parcel zzdo = zzdo();
        zzdo.writeFloat(f);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zza(String str, zv zvVar) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzgx.zza(zzdo, zvVar);
        zzb(6, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zzb(zv zvVar, String str) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzdo.writeString(str);
        zzb(5, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zzcd(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(3, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zzce(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(10, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final float zzra() {
        Parcel zza = zza(7, zzdo());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final boolean zzrb() {
        Parcel zza = zza(8, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final List<zzajh> zzrc() {
        Parcel zza = zza(13, zzdo());
        ArrayList createTypedArrayList = zza.createTypedArrayList(zzajh.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zzrd() {
        zzb(15, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zza(zzane zzane) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzane);
        zzb(11, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zza(zzajk zzajk) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzajk);
        zzb(12, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zza(zzaao zzaao) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzaao);
        zzb(14, zzdo);
    }
}
