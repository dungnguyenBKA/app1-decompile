package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzast implements Parcelable.Creator<zzasq> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzasq createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 1) {
                iBinder = a.s(parcel, readInt);
            } else if (i != 2) {
                a.y(parcel, readInt);
            } else {
                iBinder2 = a.s(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzasq(iBinder, iBinder2);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzasq[] newArray(int i) {
        return new zzasq[i];
    }
}
