package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class zzxr extends zzgy implements zzxs {
    public zzxr() {
        super("com.google.android.gms.ads.internal.client.IAdMetadataListener");
    }

    public static zzxs zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
        if (queryLocalInterface instanceof zzxs) {
            return (zzxs) queryLocalInterface;
        }
        return new zzxu(iBinder);
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
