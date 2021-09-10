package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzatr implements Parcelable.Creator<zzatp> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzatp createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                a.y(parcel, readInt);
            } else {
                parcelFileDescriptor = (ParcelFileDescriptor) a.f(parcel, readInt, ParcelFileDescriptor.CREATOR);
            }
        }
        a.l(parcel, z);
        return new zzatp(parcelFileDescriptor);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzatp[] newArray(int i) {
        return new zzatp[i];
    }
}
