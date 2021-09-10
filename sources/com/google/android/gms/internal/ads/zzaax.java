package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzaax implements Parcelable.Creator<zzaau> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzaau createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 2) {
                z2 = a.m(parcel, readInt);
            } else if (i == 3) {
                z3 = a.m(parcel, readInt);
            } else if (i != 4) {
                a.y(parcel, readInt);
            } else {
                z4 = a.m(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzaau(z2, z3, z4);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaau[] newArray(int i) {
        return new zzaau[i];
    }
}
