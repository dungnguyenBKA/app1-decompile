package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;

public final class a implements Parcelable.Creator<BitmapTeleporter> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final BitmapTeleporter createFromParcel(Parcel parcel) {
        int z = com.google.android.gms.common.internal.safeparcel.a.z(parcel);
        int i = 0;
        ParcelFileDescriptor parcelFileDescriptor = null;
        int i2 = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i = com.google.android.gms.common.internal.safeparcel.a.t(parcel, readInt);
            } else if (i3 == 2) {
                parcelFileDescriptor = (ParcelFileDescriptor) com.google.android.gms.common.internal.safeparcel.a.f(parcel, readInt, ParcelFileDescriptor.CREATOR);
            } else if (i3 != 3) {
                com.google.android.gms.common.internal.safeparcel.a.y(parcel, readInt);
            } else {
                i2 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, readInt);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.l(parcel, z);
        return new BitmapTeleporter(i, parcelFileDescriptor, i2);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BitmapTeleporter[] newArray(int i) {
        return new BitmapTeleporter[i];
    }
}
