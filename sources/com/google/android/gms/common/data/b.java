package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class b implements Parcelable.Creator<DataHolder> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final DataHolder createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String[] strArr = null;
        CursorWindow[] cursorWindowArr = null;
        Bundle bundle = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                strArr = a.h(parcel, readInt);
            } else if (i3 == 2) {
                cursorWindowArr = (CursorWindow[]) a.j(parcel, readInt, CursorWindow.CREATOR);
            } else if (i3 == 3) {
                i2 = a.t(parcel, readInt);
            } else if (i3 == 4) {
                bundle = a.c(parcel, readInt);
            } else if (i3 != 1000) {
                a.y(parcel, readInt);
            } else {
                i = a.t(parcel, readInt);
            }
        }
        a.l(parcel, z);
        DataHolder dataHolder = new DataHolder(i, strArr, cursorWindowArr, i2, bundle);
        dataHolder.o();
        return dataHolder;
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DataHolder[] newArray(int i) {
        return new DataHolder[i];
    }
}
