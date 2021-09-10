package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.safeparcel.a;

public final class b implements Parcelable.Creator<zah> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zah createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        int i = 0;
        ResolveAccountRequest resolveAccountRequest = null;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = a.t(parcel, readInt);
            } else if (i2 != 2) {
                a.y(parcel, readInt);
            } else {
                resolveAccountRequest = (ResolveAccountRequest) a.f(parcel, readInt, ResolveAccountRequest.CREATOR);
            }
        }
        a.l(parcel, z);
        return new zah(i, resolveAccountRequest);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zah[] newArray(int i) {
        return new zah[i];
    }
}
