package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzayh implements Parcelable.Creator<zzaye> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzaye createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        String str2 = null;
        zzvs zzvs = null;
        zzvl zzvl = null;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 1) {
                str = a.g(parcel, readInt);
            } else if (i == 2) {
                str2 = a.g(parcel, readInt);
            } else if (i == 3) {
                zzvs = (zzvs) a.f(parcel, readInt, zzvs.CREATOR);
            } else if (i != 4) {
                a.y(parcel, readInt);
            } else {
                zzvl = (zzvl) a.f(parcel, readInt, zzvl.CREATOR);
            }
        }
        a.l(parcel, z);
        return new zzaye(str, str2, zzvs, zzvl);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaye[] newArray(int i) {
        return new zzaye[i];
    }
}
