package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zztf implements Parcelable.Creator<zztc> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zztc createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        long j = 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 2) {
                parcelFileDescriptor = (ParcelFileDescriptor) a.f(parcel, readInt, ParcelFileDescriptor.CREATOR);
            } else if (i == 3) {
                z2 = a.m(parcel, readInt);
            } else if (i == 4) {
                z3 = a.m(parcel, readInt);
            } else if (i == 5) {
                j = a.v(parcel, readInt);
            } else if (i != 6) {
                a.y(parcel, readInt);
            } else {
                z4 = a.m(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zztc(parcelFileDescriptor, z2, z3, j, z4);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zztc[] newArray(int i) {
        return new zztc[i];
    }
}
