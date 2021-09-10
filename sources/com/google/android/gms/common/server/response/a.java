package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.converter.zaa;
import com.google.android.gms.common.server.response.FastJsonResponse;

public final class a implements Parcelable.Creator<FastJsonResponse.Field> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final FastJsonResponse.Field createFromParcel(Parcel parcel) {
        int z = com.google.android.gms.common.internal.safeparcel.a.z(parcel);
        String str = null;
        String str2 = null;
        zaa zaa = null;
        int i = 0;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        boolean z3 = false;
        int i4 = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.a.t(parcel, readInt);
                    break;
                case 2:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, readInt);
                    break;
                case 3:
                    z2 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, readInt);
                    break;
                case 4:
                    i3 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, readInt);
                    break;
                case 5:
                    z3 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, readInt);
                    break;
                case 6:
                    str = com.google.android.gms.common.internal.safeparcel.a.g(parcel, readInt);
                    break;
                case 7:
                    i4 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, readInt);
                    break;
                case 8:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, readInt);
                    break;
                case 9:
                    zaa = (zaa) com.google.android.gms.common.internal.safeparcel.a.f(parcel, readInt, zaa.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.y(parcel, readInt);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.l(parcel, z);
        return new FastJsonResponse.Field(i, i2, z2, i3, z3, str, i4, str2, zaa);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FastJsonResponse.Field[] newArray(int i) {
        return new FastJsonResponse.Field[i];
    }
}
