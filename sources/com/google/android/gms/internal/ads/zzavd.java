package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzavd implements Parcelable.Creator<zzava> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzava createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        zzvl zzvl = null;
        String str = null;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 2) {
                zzvl = (zzvl) a.f(parcel, readInt, zzvl.CREATOR);
            } else if (i != 3) {
                a.y(parcel, readInt);
            } else {
                str = a.g(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzava(zzvl, str);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzava[] newArray(int i) {
        return new zzava[i];
    }
}
