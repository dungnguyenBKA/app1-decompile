package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.a;

public final class z implements Parcelable.Creator<zzc> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzc createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        Bundle bundle = null;
        Feature[] featureArr = null;
        int i = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                bundle = a.c(parcel, readInt);
            } else if (i2 == 2) {
                featureArr = (Feature[]) a.j(parcel, readInt, Feature.CREATOR);
            } else if (i2 != 3) {
                a.y(parcel, readInt);
            } else {
                i = a.t(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzc(bundle, featureArr, i);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzc[] newArray(int i) {
        return new zzc[i];
    }
}
