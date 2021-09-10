package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.ArrayList;

public final class d implements Parcelable.Creator<zal> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zal createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        ArrayList arrayList = null;
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
                arrayList = a.k(parcel, readInt, zam.CREATOR);
            }
        }
        a.l(parcel, z);
        return new zal(i, str, arrayList);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zal[] newArray(int i) {
        return new zal[i];
    }
}
