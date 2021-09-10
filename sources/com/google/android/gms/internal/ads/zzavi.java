package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzavi implements Parcelable.Creator<zzavj> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzavj createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 2) {
                str = a.g(parcel, readInt);
            } else if (i2 != 3) {
                a.y(parcel, readInt);
            } else {
                i = a.t(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzavj(str, i);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzavj[] newArray(int i) {
        return new zzavj[i];
    }
}
