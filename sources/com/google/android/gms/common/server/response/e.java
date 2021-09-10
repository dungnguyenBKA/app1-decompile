package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class e implements Parcelable.Creator<SafeParcelResponse> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final SafeParcelResponse createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        Parcel parcel2 = null;
        zak zak = null;
        int i = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = a.t(parcel, readInt);
            } else if (i2 == 2) {
                parcel2 = a.e(parcel, readInt);
            } else if (i2 != 3) {
                a.y(parcel, readInt);
            } else {
                zak = (zak) a.f(parcel, readInt, zak.CREATOR);
            }
        }
        a.l(parcel, z);
        return new SafeParcelResponse(i, parcel2, zak);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SafeParcelResponse[] newArray(int i) {
        return new SafeParcelResponse[i];
    }
}
