package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

public final class a implements Parcelable.Creator<WebImage> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final WebImage createFromParcel(Parcel parcel) {
        int z = com.google.android.gms.common.internal.safeparcel.a.z(parcel);
        int i = 0;
        Uri uri = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i4 = 65535 & readInt;
            if (i4 == 1) {
                i = com.google.android.gms.common.internal.safeparcel.a.t(parcel, readInt);
            } else if (i4 == 2) {
                uri = (Uri) com.google.android.gms.common.internal.safeparcel.a.f(parcel, readInt, Uri.CREATOR);
            } else if (i4 == 3) {
                i2 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, readInt);
            } else if (i4 != 4) {
                com.google.android.gms.common.internal.safeparcel.a.y(parcel, readInt);
            } else {
                i3 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, readInt);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.l(parcel, z);
        return new WebImage(i, uri, i2, i3);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ WebImage[] newArray(int i) {
        return new WebImage[i];
    }
}
