package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzvf implements Parcelable.Creator<zzvg> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzvg createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        String str2 = null;
        zzvg zzvg = null;
        IBinder iBinder = null;
        int i = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = a.t(parcel, readInt);
            } else if (i2 == 2) {
                str = a.g(parcel, readInt);
            } else if (i2 == 3) {
                str2 = a.g(parcel, readInt);
            } else if (i2 == 4) {
                zzvg = (zzvg) a.f(parcel, readInt, zzvg.CREATOR);
            } else if (i2 != 5) {
                a.y(parcel, readInt);
            } else {
                iBinder = a.s(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzvg(i, str, str2, zzvg, iBinder);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvg[] newArray(int i) {
        return new zzvg[i];
    }
}
