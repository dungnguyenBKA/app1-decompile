package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.server.converter.StringToIntConverter;

public final class c implements Parcelable.Creator<StringToIntConverter.zaa> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final StringToIntConverter.zaa createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        int i = 0;
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i = a.t(parcel, readInt);
            } else if (i3 == 2) {
                str = a.g(parcel, readInt);
            } else if (i3 != 3) {
                a.y(parcel, readInt);
            } else {
                i2 = a.t(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new StringToIntConverter.zaa(i, str, i2);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StringToIntConverter.zaa[] newArray(int i) {
        return new StringToIntConverter.zaa[i];
    }
}
