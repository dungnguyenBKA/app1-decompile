package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.zv;

public abstract class zzsn extends zzgy implements zzsk {
    public zzsn() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 2) {
            zzsq zzsq = null;
            zzsv zzsv = null;
            if (i == 3) {
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
                    if (queryLocalInterface instanceof zzsq) {
                        zzsq = (zzsq) queryLocalInterface;
                    } else {
                        zzsq = new zzss(readStrongBinder);
                    }
                }
                zza(zzsq);
                parcel2.writeNoException();
                return true;
            } else if (i == 4) {
                zv O = zv.a.O(parcel.readStrongBinder());
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
                    if (queryLocalInterface2 instanceof zzsv) {
                        zzsv = (zzsv) queryLocalInterface2;
                    } else {
                        zzsv = new zzsx(readStrongBinder2);
                    }
                }
                zza(O, zzsv);
                parcel2.writeNoException();
                return true;
            } else if (i == 5) {
                zzyx zzki = zzki();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzki);
                return true;
            } else if (i != 6) {
                return false;
            } else {
                setImmersiveMode(zzgx.zza(parcel));
                parcel2.writeNoException();
                return true;
            }
        } else {
            zzxl zzdx = zzdx();
            parcel2.writeNoException();
            zzgx.zza(parcel2, zzdx);
            return true;
        }
    }
}
