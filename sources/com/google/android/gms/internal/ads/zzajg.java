package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzajg implements Parcelable.Creator<zzajh> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzajh createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        boolean z2 = false;
        String str = null;
        String str2 = null;
        int i = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                str = a.g(parcel, readInt);
            } else if (i2 == 2) {
                z2 = a.m(parcel, readInt);
            } else if (i2 == 3) {
                i = a.t(parcel, readInt);
            } else if (i2 != 4) {
                a.y(parcel, readInt);
            } else {
                str2 = a.g(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzajh(str, z2, i, str2);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzajh[] newArray(int i) {
        return new zzajh[i];
    }
}
