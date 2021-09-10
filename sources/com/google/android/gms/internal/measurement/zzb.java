package com.google.android.gms.internal.measurement;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public class zzb extends Binder implements IInterface {
    protected zzb(String str) {
        attachInterface(this, str);
    }

    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i <= 16777215) {
            parcel.enforceInterface(getInterfaceDescriptor());
        } else if (super.onTransact(i, parcel, parcel2, i2)) {
            return true;
        }
        return zza(i, parcel, parcel2, i2);
    }

    /* access modifiers changed from: protected */
    public boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        throw null;
    }
}
