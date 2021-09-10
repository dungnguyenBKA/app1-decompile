package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

public final class a implements Parcelable.Creator<zaa> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zaa createFromParcel(Parcel parcel) {
        int z = com.google.android.gms.common.internal.safeparcel.a.z(parcel);
        int i = 0;
        Intent intent = null;
        int i2 = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i = com.google.android.gms.common.internal.safeparcel.a.t(parcel, readInt);
            } else if (i3 == 2) {
                i2 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, readInt);
            } else if (i3 != 3) {
                com.google.android.gms.common.internal.safeparcel.a.y(parcel, readInt);
            } else {
                intent = (Intent) com.google.android.gms.common.internal.safeparcel.a.f(parcel, readInt, Intent.CREATOR);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.l(parcel, z);
        return new zaa(i, i2, intent);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zaa[] newArray(int i) {
        return new zaa[i];
    }
}
