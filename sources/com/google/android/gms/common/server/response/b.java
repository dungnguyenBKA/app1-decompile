package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.server.response.FastJsonResponse;

public final class b implements Parcelable.Creator<zam> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zam createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        FastJsonResponse.Field field = null;
        int i = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = a.t(parcel, readInt);
            } else if (i2 == 2) {
                str = a.g(parcel, readInt);
            } else if (i2 != 3) {
                a.y(parcel, readInt);
            } else {
                field = (FastJsonResponse.Field) a.f(parcel, readInt, FastJsonResponse.Field.CREATOR);
            }
        }
        a.l(parcel, z);
        return new zam(i, str, field);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zam[] newArray(int i) {
        return new zam[i];
    }
}
