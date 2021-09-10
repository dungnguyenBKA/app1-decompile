package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public final class zzze extends zzgw implements zzzc {
    zzze(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final float getAspectRatio() {
        Parcel zza = zza(9, zzdo());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final float getCurrentTime() {
        Parcel zza = zza(7, zzdo());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final float getDuration() {
        Parcel zza = zza(6, zzdo());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final int getPlaybackState() {
        Parcel zza = zza(5, zzdo());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final boolean isClickToExpandEnabled() {
        Parcel zza = zza(12, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final boolean isCustomControlsEnabled() {
        Parcel zza = zza(10, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final boolean isMuted() {
        Parcel zza = zza(4, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void mute(boolean z) {
        Parcel zzdo = zzdo();
        zzgx.writeBoolean(zzdo, z);
        zzb(3, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void pause() {
        zzb(2, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void play() {
        zzb(1, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void stop() {
        zzb(13, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void zza(zzzd zzzd) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzzd);
        zzb(8, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final zzzd zzrg() {
        zzzd zzzd;
        Parcel zza = zza(11, zzdo());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzzd = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
            if (queryLocalInterface instanceof zzzd) {
                zzzd = (zzzd) queryLocalInterface;
            } else {
                zzzd = new zzzf(readStrongBinder);
            }
        }
        zza.recycle();
        return zzzd;
    }
}
