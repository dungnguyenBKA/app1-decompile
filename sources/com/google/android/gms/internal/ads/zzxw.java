package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class zzxw extends zzgy implements zzxt {
    public zzxw() {
        super("com.google.android.gms.ads.internal.client.IAppEventListener");
    }

    public static zzxt zze(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
        if (queryLocalInterface instanceof zzxt) {
            return (zzxt) queryLocalInterface;
        }
        return new zzxv(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        onAppEvent(parcel.readString(), parcel.readString());
        parcel2.writeNoException();
        return true;
    }
}
