package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.zv;

public abstract class zzaeu extends zzgy implements zzaev {
    public zzaeu() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    public static zzaev zzp(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
        if (queryLocalInterface instanceof zzaev) {
            return (zzaev) queryLocalInterface;
        }
        return new zzaex(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzaem zzaem;
        switch (i) {
            case 1:
                zzb(parcel.readString(), zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 2:
                zv zzco = zzco(parcel.readString());
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzco);
                return true;
            case 3:
                zza(zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                destroy();
                parcel2.writeNoException();
                return true;
            case 5:
                zzc(zv.a.O(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                return true;
            case 6:
                zzf(zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                zzg(zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzaem = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
                    if (queryLocalInterface instanceof zzaem) {
                        zzaem = (zzaem) queryLocalInterface;
                    } else {
                        zzaem = new zzaeo(readStrongBinder);
                    }
                }
                zza(zzaem);
                parcel2.writeNoException();
                return true;
            case 9:
                zzh(zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
