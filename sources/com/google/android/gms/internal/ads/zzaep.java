package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.zv;

public abstract class zzaep extends zzgy implements zzaem {
    public zzaep() {
        super("com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    public static zzaem zzn(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
        if (queryLocalInterface instanceof zzaem) {
            return (zzaem) queryLocalInterface;
        }
        return new zzaeo(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzagd zzagd;
        switch (i) {
            case 2:
                float aspectRatio = getAspectRatio();
                parcel2.writeNoException();
                parcel2.writeFloat(aspectRatio);
                return true;
            case 3:
                zzo(zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                zv zztl = zztl();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zztl);
                return true;
            case 5:
                float duration = getDuration();
                parcel2.writeNoException();
                parcel2.writeFloat(duration);
                return true;
            case 6:
                float currentTime = getCurrentTime();
                parcel2.writeNoException();
                parcel2.writeFloat(currentTime);
                return true;
            case 7:
                zzzc videoController = getVideoController();
                parcel2.writeNoException();
                zzgx.zza(parcel2, videoController);
                return true;
            case 8:
                boolean hasVideoContent = hasVideoContent();
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, hasVideoContent);
                return true;
            case 9:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzagd = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener");
                    if (queryLocalInterface instanceof zzagd) {
                        zzagd = (zzagd) queryLocalInterface;
                    } else {
                        zzagd = new zzagc(readStrongBinder);
                    }
                }
                zza(zzagd);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
