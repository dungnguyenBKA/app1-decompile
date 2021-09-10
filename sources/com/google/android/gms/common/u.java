package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class u implements Parcelable.Creator<zzj> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzj createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        boolean z2 = false;
        String str = null;
        IBinder iBinder = null;
        boolean z3 = false;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 1) {
                str = a.g(parcel, readInt);
            } else if (i == 2) {
                iBinder = a.s(parcel, readInt);
            } else if (i == 3) {
                z2 = a.m(parcel, readInt);
            } else if (i != 4) {
                a.y(parcel, readInt);
            } else {
                z3 = a.m(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzj(str, iBinder, z2, z3);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzj[] newArray(int i) {
        return new zzj[i];
    }
}
