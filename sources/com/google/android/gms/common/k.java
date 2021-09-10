package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class k implements Parcelable.Creator<Feature> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final Feature createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        int i = 0;
        long j = -1;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                str = a.g(parcel, readInt);
            } else if (i2 == 2) {
                i = a.t(parcel, readInt);
            } else if (i2 != 3) {
                a.y(parcel, readInt);
            } else {
                j = a.v(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new Feature(str, i, j);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Feature[] newArray(int i) {
        return new Feature[i];
    }
}
