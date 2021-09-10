package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzvv implements Parcelable.Creator<zzvw> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzvw createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        zzvg zzvg = null;
        Bundle bundle = null;
        long j = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 1) {
                str = a.g(parcel, readInt);
            } else if (i == 2) {
                j = a.v(parcel, readInt);
            } else if (i == 3) {
                zzvg = (zzvg) a.f(parcel, readInt, zzvg.CREATOR);
            } else if (i != 4) {
                a.y(parcel, readInt);
            } else {
                bundle = a.c(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzvw(str, j, zzvg, bundle);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvw[] newArray(int i) {
        return new zzvw[i];
    }
}
