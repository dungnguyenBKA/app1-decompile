package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzduv implements Parcelable.Creator<zzduw> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzduw createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        int i = 0;
        byte[] bArr = null;
        int i2 = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i = a.t(parcel, readInt);
            } else if (i3 == 2) {
                bArr = a.d(parcel, readInt);
            } else if (i3 != 3) {
                a.y(parcel, readInt);
            } else {
                i2 = a.t(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzduw(i, bArr, i2);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzduw[] newArray(int i) {
        return new zzduw[i];
    }
}
