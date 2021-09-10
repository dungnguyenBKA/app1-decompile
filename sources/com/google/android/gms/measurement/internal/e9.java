package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

public final class e9 implements Parcelable.Creator<zzkg> {
    static void a(zzkg zzkg, Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, zzkg.b);
        b.r(parcel, 2, zzkg.c, false);
        b.n(parcel, 3, zzkg.d);
        b.o(parcel, 4, zzkg.e, false);
        b.i(parcel, 5, null, false);
        b.r(parcel, 6, zzkg.f, false);
        b.r(parcel, 7, zzkg.g, false);
        b.g(parcel, 8, zzkg.h, false);
        b.b(parcel, a);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzkg createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        Long l = null;
        Float f = null;
        String str2 = null;
        String str3 = null;
        Double d = null;
        long j = 0;
        int i = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.t(parcel, readInt);
                    break;
                case 2:
                    str = a.g(parcel, readInt);
                    break;
                case 3:
                    j = a.v(parcel, readInt);
                    break;
                case 4:
                    l = a.w(parcel, readInt);
                    break;
                case 5:
                    f = a.r(parcel, readInt);
                    break;
                case 6:
                    str2 = a.g(parcel, readInt);
                    break;
                case 7:
                    str3 = a.g(parcel, readInt);
                    break;
                case 8:
                    d = a.p(parcel, readInt);
                    break;
                default:
                    a.y(parcel, readInt);
                    break;
            }
        }
        a.l(parcel, z);
        return new zzkg(i, str, j, l, f, str2, str3, d);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzkg[] newArray(int i) {
        return new zzkg[i];
    }
}
