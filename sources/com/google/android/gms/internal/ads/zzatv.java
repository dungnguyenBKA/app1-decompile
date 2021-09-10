package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzatv implements Parcelable.Creator<zzats> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzats createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                a.y(parcel, readInt);
            } else {
                str = a.g(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzats(str);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzats[] newArray(int i) {
        return new zzats[i];
    }
}
