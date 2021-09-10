package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.ArrayList;

public final class c implements Parcelable.Creator<zak> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zak createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        ArrayList arrayList = null;
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = a.t(parcel, readInt);
            } else if (i2 == 2) {
                arrayList = a.k(parcel, readInt, zal.CREATOR);
            } else if (i2 != 3) {
                a.y(parcel, readInt);
            } else {
                str = a.g(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zak(i, arrayList, str);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zak[] newArray(int i) {
        return new zak[i];
    }
}
