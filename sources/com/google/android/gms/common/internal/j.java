package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;

/* access modifiers changed from: package-private */
public final class j implements k {
    private final IBinder b;

    j(IBinder iBinder) {
        this.b = iBinder;
    }

    public final IBinder asBinder() {
        return this.b;
    }

    @Override // com.google.android.gms.common.internal.k
    public final void i(i iVar, GetServiceRequest getServiceRequest) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            obtain.writeStrongBinder(iVar.asBinder());
            obtain.writeInt(1);
            getServiceRequest.writeToParcel(obtain, 0);
            this.b.transact(46, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
