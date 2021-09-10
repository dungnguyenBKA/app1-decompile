package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzwa implements Parcelable.Creator<zzvx> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzvx createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        int i = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                a.y(parcel, readInt);
            } else {
                i = a.t(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzvx(i);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvx[] newArray(int i) {
        return new zzvx[i];
    }
}
