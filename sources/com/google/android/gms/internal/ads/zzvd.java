package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzvd implements Parcelable.Creator<zzve> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzve createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 1) {
                str = a.g(parcel, readInt);
            } else if (i != 2) {
                a.y(parcel, readInt);
            } else {
                str2 = a.g(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzve(str, str2);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzve[] newArray(int i) {
        return new zzve[i];
    }
}
