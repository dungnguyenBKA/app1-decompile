package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class zzajn extends zzgy implements zzajk {
    public zzajn() {
        super("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    public static zzajk zzaa(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
        if (queryLocalInterface instanceof zzajk) {
            return (zzajk) queryLocalInterface;
        }
        return new zzajm(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        zze(parcel.createTypedArrayList(zzajh.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
