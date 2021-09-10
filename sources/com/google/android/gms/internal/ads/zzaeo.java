package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzaeo extends zzgw implements zzaem {
    zzaeo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final float getAspectRatio() {
        Parcel zza = zza(2, zzdo());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final float getCurrentTime() {
        Parcel zza = zza(6, zzdo());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final float getDuration() {
        Parcel zza = zza(5, zzdo());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final zzzc getVideoController() {
        Parcel zza = zza(7, zzdo());
        zzzc zzk = zzzb.zzk(zza.readStrongBinder());
        zza.recycle();
        return zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final boolean hasVideoContent() {
        Parcel zza = zza(8, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final void zza(zzagd zzagd) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzagd);
        zzb(9, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final void zzo(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(3, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final zv zztl() {
        return ic.A(zza(4, zzdo()));
    }
}
