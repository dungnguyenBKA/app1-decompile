package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzvt implements Parcelable.Creator<zzvu> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzvu createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        long j = 0;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i = a.t(parcel, readInt);
            } else if (i3 == 2) {
                i2 = a.t(parcel, readInt);
            } else if (i3 == 3) {
                str = a.g(parcel, readInt);
            } else if (i3 != 4) {
                a.y(parcel, readInt);
            } else {
                j = a.v(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzvu(i, i2, str, j);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvu[] newArray(int i) {
        return new zzvu[i];
    }
}
