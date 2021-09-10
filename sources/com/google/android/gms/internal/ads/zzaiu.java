package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzaiu implements Parcelable.Creator<zzaiv> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzaiv createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        byte[] bArr = null;
        String[] strArr = null;
        String[] strArr2 = null;
        long j = 0;
        boolean z2 = false;
        int i = 0;
        boolean z3 = false;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    z2 = a.m(parcel, readInt);
                    break;
                case 2:
                    str = a.g(parcel, readInt);
                    break;
                case 3:
                    i = a.t(parcel, readInt);
                    break;
                case 4:
                    bArr = a.d(parcel, readInt);
                    break;
                case 5:
                    strArr = a.h(parcel, readInt);
                    break;
                case 6:
                    strArr2 = a.h(parcel, readInt);
                    break;
                case 7:
                    z3 = a.m(parcel, readInt);
                    break;
                case 8:
                    j = a.v(parcel, readInt);
                    break;
                default:
                    a.y(parcel, readInt);
                    break;
            }
        }
        a.l(parcel, z);
        return new zzaiv(z2, str, i, bArr, strArr, strArr2, z3, j);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaiv[] newArray(int i) {
        return new zzaiv[i];
    }
}
