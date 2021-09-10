package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzajx extends zzgw implements zzajv {
    zzajx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.zzajv
    public final void destroy() {
        zzb(4, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzajv
    public final zzzc getVideoController() {
        Parcel zza = zza(3, zzdo());
        zzzc zzk = zzzb.zzk(zza.readStrongBinder());
        zza.recycle();
        return zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzajv
    public final void zza(zv zvVar, zzajw zzajw) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzajw);
        zzb(5, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzajv
    public final void zzr(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(6, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzajv
    public final zzaem zzty() {
        Parcel zza = zza(7, zzdo());
        zzaem zzn = zzaep.zzn(zza.readStrongBinder());
        zza.recycle();
        return zzn;
    }
}
