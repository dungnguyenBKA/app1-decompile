package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzaeg implements Parcelable.Creator<zzaeh> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzaeh createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        zzaau zzaau = null;
        int i = 0;
        boolean z2 = false;
        int i2 = 0;
        boolean z3 = false;
        int i3 = 0;
        boolean z4 = false;
        int i4 = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.t(parcel, readInt);
                    break;
                case 2:
                    z2 = a.m(parcel, readInt);
                    break;
                case 3:
                    i2 = a.t(parcel, readInt);
                    break;
                case 4:
                    z3 = a.m(parcel, readInt);
                    break;
                case 5:
                    i3 = a.t(parcel, readInt);
                    break;
                case 6:
                    zzaau = (zzaau) a.f(parcel, readInt, zzaau.CREATOR);
                    break;
                case 7:
                    z4 = a.m(parcel, readInt);
                    break;
                case 8:
                    i4 = a.t(parcel, readInt);
                    break;
                default:
                    a.y(parcel, readInt);
                    break;
            }
        }
        a.l(parcel, z);
        return new zzaeh(i, z2, i2, z3, i3, zzaau, z4, i4);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaeh[] newArray(int i) {
        return new zzaeh[i];
    }
}
