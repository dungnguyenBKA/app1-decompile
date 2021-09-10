package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzajs implements Parcelable.Creator<zzajt> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzajt createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        int i = 0;
        String str = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i4 = 65535 & readInt;
            if (i4 == 1) {
                i2 = a.t(parcel, readInt);
            } else if (i4 == 2) {
                str = a.g(parcel, readInt);
            } else if (i4 == 3) {
                i3 = a.t(parcel, readInt);
            } else if (i4 != 1000) {
                a.y(parcel, readInt);
            } else {
                i = a.t(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzajt(i, i2, str, i3);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzajt[] newArray(int i) {
        return new zzajt[i];
    }
}
