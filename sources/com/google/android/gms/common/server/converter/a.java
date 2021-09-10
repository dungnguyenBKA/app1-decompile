package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;

public final class a implements Parcelable.Creator<zaa> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zaa createFromParcel(Parcel parcel) {
        int z = com.google.android.gms.common.internal.safeparcel.a.z(parcel);
        int i = 0;
        StringToIntConverter stringToIntConverter = null;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = com.google.android.gms.common.internal.safeparcel.a.t(parcel, readInt);
            } else if (i2 != 2) {
                com.google.android.gms.common.internal.safeparcel.a.y(parcel, readInt);
            } else {
                stringToIntConverter = (StringToIntConverter) com.google.android.gms.common.internal.safeparcel.a.f(parcel, readInt, StringToIntConverter.CREATOR);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.l(parcel, z);
        return new zaa(i, stringToIntConverter);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zaa[] newArray(int i) {
        return new zaa[i];
    }
}
