package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.server.converter.StringToIntConverter;
import java.util.ArrayList;

public final class b implements Parcelable.Creator<StringToIntConverter> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final StringToIntConverter createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = a.t(parcel, readInt);
            } else if (i2 != 2) {
                a.y(parcel, readInt);
            } else {
                arrayList = a.k(parcel, readInt, StringToIntConverter.zaa.CREATOR);
            }
        }
        a.l(parcel, z);
        return new StringToIntConverter(i, arrayList);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StringToIntConverter[] newArray(int i) {
        return new StringToIntConverter[i];
    }
}
