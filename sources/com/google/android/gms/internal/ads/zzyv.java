package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class zzyv extends zzgy implements zzyw {
    public zzyv() {
        super("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
    }

    public static zzyw zzi(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
        if (queryLocalInterface instanceof zzyw) {
            return (zzyw) queryLocalInterface;
        }
        return new zzyy(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        zza((zzvu) zzgx.zza(parcel, zzvu.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
