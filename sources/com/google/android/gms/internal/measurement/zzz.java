package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzz implements Parcelable.Creator<zzy> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzy createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        long j = 0;
        long j2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        Bundle bundle = null;
        String str4 = null;
        boolean z2 = false;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    j = a.v(parcel, readInt);
                    break;
                case 2:
                    j2 = a.v(parcel, readInt);
                    break;
                case 3:
                    z2 = a.m(parcel, readInt);
                    break;
                case 4:
                    str = a.g(parcel, readInt);
                    break;
                case 5:
                    str2 = a.g(parcel, readInt);
                    break;
                case 6:
                    str3 = a.g(parcel, readInt);
                    break;
                case 7:
                    bundle = a.c(parcel, readInt);
                    break;
                case 8:
                    str4 = a.g(parcel, readInt);
                    break;
                default:
                    a.y(parcel, readInt);
                    break;
            }
        }
        a.l(parcel, z);
        return new zzy(j, j2, z2, str, str2, str3, bundle, str4);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzy[] newArray(int i) {
        return new zzy[i];
    }
}
