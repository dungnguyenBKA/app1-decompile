package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class zzaji extends zzgy implements zzajj {
    public zzaji() {
        super("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
    }

    public static zzajj zzz(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
        if (queryLocalInterface instanceof zzajj) {
            return (zzajj) queryLocalInterface;
        }
        return new zzajl(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 2) {
            onInitializationSucceeded();
        } else if (i != 3) {
            return false;
        } else {
            onInitializationFailed(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}
