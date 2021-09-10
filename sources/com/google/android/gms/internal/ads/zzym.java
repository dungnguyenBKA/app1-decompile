package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class zzym extends zzgy implements zzyj {
    public zzym() {
        super("com.google.android.gms.ads.internal.client.IMuteThisAdListener");
    }

    public static zzyj zzf(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdListener");
        if (queryLocalInterface instanceof zzyj) {
            return (zzyj) queryLocalInterface;
        }
        return new zzyl(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        onAdMuted();
        parcel2.writeNoException();
        return true;
    }
}
