package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

public final class r implements Parcelable.Creator<zzas> {
    static void a(zzas zzas, Parcel parcel, int i) {
        int a = b.a(parcel);
        b.r(parcel, 2, zzas.b, false);
        b.q(parcel, 3, zzas.c, i, false);
        b.r(parcel, 4, zzas.d, false);
        b.n(parcel, 5, zzas.e);
        b.b(parcel, a);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzas createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        zzaq zzaq = null;
        String str2 = null;
        long j = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 2) {
                str = a.g(parcel, readInt);
            } else if (i == 3) {
                zzaq = (zzaq) a.f(parcel, readInt, zzaq.CREATOR);
            } else if (i == 4) {
                str2 = a.g(parcel, readInt);
            } else if (i != 5) {
                a.y(parcel, readInt);
            } else {
                j = a.v(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new zzas(str, zzaq, str2, j);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzas[] newArray(int i) {
        return new zzas[i];
    }
}
