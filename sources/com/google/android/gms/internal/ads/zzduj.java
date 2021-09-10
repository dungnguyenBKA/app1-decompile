package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzduj implements Parcelable.Creator<zzduk> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzduk createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        String str2 = null;
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
                str2 = a.g(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzduk(i, str, str2);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzduk[] newArray(int i) {
        return new zzduk[i];
    }
}
