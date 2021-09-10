package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzsm extends zzgw implements zzsk {
    zzsm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.zzsk
    public final void setImmersiveMode(boolean z) {
        Parcel zzdo = zzdo();
        zzgx.writeBoolean(zzdo, z);
        zzb(6, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzsk
    public final void zza(zzsq zzsq) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzsq);
        zzb(3, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzsk
    public final zzxl zzdx() {
        Parcel zza = zza(2, zzdo());
        zzxl zzc = zzxo.zzc(zza.readStrongBinder());
        zza.recycle();
        return zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzsk
    public final zzyx zzki() {
        Parcel zza = zza(5, zzdo());
        zzyx zzj = zzza.zzj(zza.readStrongBinder());
        zza.recycle();
        return zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzsk
    public final void zza(zv zvVar, zzsv zzsv) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzsv);
        zzb(4, zzdo);
    }
}
