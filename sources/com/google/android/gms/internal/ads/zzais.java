package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzais implements Parcelable.Creator<zzait> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzait createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        String[] strArr = null;
        String[] strArr2 = null;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 1) {
                str = a.g(parcel, readInt);
            } else if (i == 2) {
                strArr = a.h(parcel, readInt);
            } else if (i != 3) {
                a.y(parcel, readInt);
            } else {
                strArr2 = a.h(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzait(str, strArr, strArr2);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzait[] newArray(int i) {
        return new zzait[i];
    }
}
