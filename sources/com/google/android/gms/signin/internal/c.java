package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.safeparcel.a;

public final class c implements Parcelable.Creator<zaj> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zaj createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        ConnectionResult connectionResult = null;
        ResolveAccountResponse resolveAccountResponse = null;
        int i = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = a.t(parcel, readInt);
            } else if (i2 == 2) {
                connectionResult = (ConnectionResult) a.f(parcel, readInt, ConnectionResult.CREATOR);
            } else if (i2 != 3) {
                a.y(parcel, readInt);
            } else {
                resolveAccountResponse = (ResolveAccountResponse) a.f(parcel, readInt, ResolveAccountResponse.CREATOR);
            }
        }
        a.l(parcel, z);
        return new zaj(i, connectionResult, resolveAccountResponse);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zaj[] newArray(int i) {
        return new zaj[i];
    }
}
