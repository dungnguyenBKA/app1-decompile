package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzazq implements Parcelable.Creator<zzazn> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzazn createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 2) {
                str = a.g(parcel, readInt);
            } else if (i3 == 3) {
                i = a.t(parcel, readInt);
            } else if (i3 == 4) {
                i2 = a.t(parcel, readInt);
            } else if (i3 == 5) {
                z2 = a.m(parcel, readInt);
            } else if (i3 != 6) {
                a.y(parcel, readInt);
            } else {
                z3 = a.m(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzazn(str, i, i2, z2, z3);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzazn[] newArray(int i) {
        return new zzazn[i];
    }
}
