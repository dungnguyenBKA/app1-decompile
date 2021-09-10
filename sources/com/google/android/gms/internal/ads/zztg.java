package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zztg implements Parcelable.Creator<zzth> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzth createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        long j = 0;
        long j2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Bundle bundle = null;
        String str5 = null;
        boolean z2 = false;
        int i = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = a.g(parcel, readInt);
                    break;
                case 3:
                    j = a.v(parcel, readInt);
                    break;
                case 4:
                    str2 = a.g(parcel, readInt);
                    break;
                case 5:
                    str3 = a.g(parcel, readInt);
                    break;
                case 6:
                    str4 = a.g(parcel, readInt);
                    break;
                case 7:
                    bundle = a.c(parcel, readInt);
                    break;
                case 8:
                    z2 = a.m(parcel, readInt);
                    break;
                case 9:
                    j2 = a.v(parcel, readInt);
                    break;
                case 10:
                    str5 = a.g(parcel, readInt);
                    break;
                case 11:
                    i = a.t(parcel, readInt);
                    break;
                default:
                    a.y(parcel, readInt);
                    break;
            }
        }
        a.l(parcel, z);
        return new zzth(str, j, str2, str3, str4, bundle, z2, j2, str5, i);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzth[] newArray(int i) {
        return new zzth[i];
    }
}
