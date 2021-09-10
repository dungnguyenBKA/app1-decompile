package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.ArrayList;

public final class zzawx implements Parcelable.Creator<zzawu> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzawu createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        String str2 = null;
        ArrayList<String> arrayList = null;
        ArrayList<String> arrayList2 = null;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = a.g(parcel, readInt);
                    break;
                case 3:
                    str2 = a.g(parcel, readInt);
                    break;
                case 4:
                    z2 = a.m(parcel, readInt);
                    break;
                case 5:
                    z3 = a.m(parcel, readInt);
                    break;
                case 6:
                    arrayList = a.i(parcel, readInt);
                    break;
                case 7:
                    z4 = a.m(parcel, readInt);
                    break;
                case 8:
                    z5 = a.m(parcel, readInt);
                    break;
                case 9:
                    arrayList2 = a.i(parcel, readInt);
                    break;
                default:
                    a.y(parcel, readInt);
                    break;
            }
        }
        a.l(parcel, z);
        return new zzawu(str, str2, z2, z3, arrayList, z4, z5, arrayList2);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzawu[] newArray(int i) {
        return new zzawu[i];
    }
}
