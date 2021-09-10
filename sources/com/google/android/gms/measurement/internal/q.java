package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class q implements Parcelable.Creator<zzaq> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzaq createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                a.y(parcel, readInt);
            } else {
                bundle = a.c(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzaq(bundle);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzaq[] newArray(int i) {
        return new zzaq[i];
    }
}
