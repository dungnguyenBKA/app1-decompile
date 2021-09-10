package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class r implements Parcelable.Creator<ClientIdentity> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final ClientIdentity createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = a.t(parcel, readInt);
            } else if (i2 != 2) {
                a.y(parcel, readInt);
            } else {
                str = a.g(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new ClientIdentity(i, str);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ClientIdentity[] newArray(int i) {
        return new ClientIdentity[i];
    }
}
