package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;

public final class a implements Parcelable.Creator<FavaDiagnosticsEntity> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final FavaDiagnosticsEntity createFromParcel(Parcel parcel) {
        int z = com.google.android.gms.common.internal.safeparcel.a.z(parcel);
        int i = 0;
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i = com.google.android.gms.common.internal.safeparcel.a.t(parcel, readInt);
            } else if (i3 == 2) {
                str = com.google.android.gms.common.internal.safeparcel.a.g(parcel, readInt);
            } else if (i3 != 3) {
                com.google.android.gms.common.internal.safeparcel.a.y(parcel, readInt);
            } else {
                i2 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, readInt);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.l(parcel, z);
        return new FavaDiagnosticsEntity(i, str, i2);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FavaDiagnosticsEntity[] newArray(int i) {
        return new FavaDiagnosticsEntity[i];
    }
}
