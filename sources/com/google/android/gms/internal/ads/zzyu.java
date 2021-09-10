package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class zzyu extends zzgy implements zzyr {
    public zzyu() {
        super("com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener");
    }

    public static zzyr zzh(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener");
        if (queryLocalInterface instanceof zzyr) {
            return (zzyr) queryLocalInterface;
        }
        return new zzyt(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        onAdMetadataChanged();
        parcel2.writeNoException();
        return true;
    }
}
