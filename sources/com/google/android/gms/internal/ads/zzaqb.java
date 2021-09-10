package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzaqb implements Parcelable.Creator<zzapy> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzapy createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i4 = 65535 & readInt;
            if (i4 == 1) {
                i = a.t(parcel, readInt);
            } else if (i4 == 2) {
                i2 = a.t(parcel, readInt);
            } else if (i4 != 3) {
                a.y(parcel, readInt);
            } else {
                i3 = a.t(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzapy(i, i2, i3);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzapy[] newArray(int i) {
        return new zzapy[i];
    }
}
