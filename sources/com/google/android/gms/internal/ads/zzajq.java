package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzajq implements Parcelable.Creator<zzajr> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzajr createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        Bundle bundle = null;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 1) {
                str = a.g(parcel, readInt);
            } else if (i != 2) {
                a.y(parcel, readInt);
            } else {
                bundle = a.c(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzajr(str, bundle);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzajr[] newArray(int i) {
        return new zzajr[i];
    }
}
