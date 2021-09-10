package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzaar implements Parcelable.Creator<zzaao> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzaao createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i = a.t(parcel, readInt);
            } else if (i3 != 2) {
                a.y(parcel, readInt);
            } else {
                i2 = a.t(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzaao(i, i2);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaao[] newArray(int i) {
        return new zzaao[i];
    }
}
