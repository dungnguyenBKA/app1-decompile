package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.a;

public final class w implements Parcelable.Creator<ResolveAccountResponse> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final ResolveAccountResponse createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        IBinder iBinder = null;
        ConnectionResult connectionResult = null;
        int i = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = a.t(parcel, readInt);
            } else if (i2 == 2) {
                iBinder = a.s(parcel, readInt);
            } else if (i2 == 3) {
                connectionResult = (ConnectionResult) a.f(parcel, readInt, ConnectionResult.CREATOR);
            } else if (i2 == 4) {
                z2 = a.m(parcel, readInt);
            } else if (i2 != 5) {
                a.y(parcel, readInt);
            } else {
                z3 = a.m(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new ResolveAccountResponse(i, iBinder, connectionResult, z2, z3);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ResolveAccountResponse[] newArray(int i) {
        return new ResolveAccountResponse[i];
    }
}
