package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class q0 implements Parcelable.Creator<zzv> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzv createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        int i = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 1) {
                a.y(parcel, readInt);
            } else {
                i = a.t(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzv(i);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzv[] newArray(int i) {
        return new zzv[i];
    }
}
