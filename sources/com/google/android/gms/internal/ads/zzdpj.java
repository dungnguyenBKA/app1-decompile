package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzdpj implements Parcelable.Creator<zzdpf> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzdpf createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.t(parcel, readInt);
                    break;
                case 2:
                    i2 = a.t(parcel, readInt);
                    break;
                case 3:
                    i3 = a.t(parcel, readInt);
                    break;
                case 4:
                    i4 = a.t(parcel, readInt);
                    break;
                case 5:
                    str = a.g(parcel, readInt);
                    break;
                case 6:
                    i5 = a.t(parcel, readInt);
                    break;
                case 7:
                    i6 = a.t(parcel, readInt);
                    break;
                default:
                    a.y(parcel, readInt);
                    break;
            }
        }
        a.l(parcel, z);
        return new zzdpf(i, i2, i3, i4, str, i5, i6);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdpf[] newArray(int i) {
        return new zzdpf[i];
    }
}
