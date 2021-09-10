package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzdui implements Parcelable.Creator<zzduf> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzduf createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        int i = 0;
        byte[] bArr = null;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = a.t(parcel, readInt);
            } else if (i2 != 2) {
                a.y(parcel, readInt);
            } else {
                bArr = a.d(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzduf(i, bArr);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzduf[] newArray(int i) {
        return new zzduf[i];
    }
}
