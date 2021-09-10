package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.ArrayList;

public final class zzate implements Parcelable.Creator<zzatf> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzatf createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        boolean z2 = false;
        ArrayList<String> arrayList = null;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 2) {
                z2 = a.m(parcel, readInt);
            } else if (i != 3) {
                a.y(parcel, readInt);
            } else {
                arrayList = a.i(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzatf(z2, arrayList);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzatf[] newArray(int i) {
        return new zzatf[i];
    }
}
