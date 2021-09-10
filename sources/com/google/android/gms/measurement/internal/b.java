package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.vungle.warren.error.VungleException;

public final class b implements Parcelable.Creator<zzaa> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzaa createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        String str = null;
        String str2 = null;
        zzkg zzkg = null;
        String str3 = null;
        zzas zzas = null;
        zzas zzas2 = null;
        zzas zzas3 = null;
        boolean z2 = false;
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
                    zzkg = (zzkg) a.f(parcel, readInt, zzkg.CREATOR);
                    break;
                case 5:
                    j = a.v(parcel, readInt);
                    break;
                case 6:
                    z2 = a.m(parcel, readInt);
                    break;
                case 7:
                    str3 = a.g(parcel, readInt);
                    break;
                case 8:
                    zzas = (zzas) a.f(parcel, readInt, zzas.CREATOR);
                    break;
                case 9:
                    j2 = a.v(parcel, readInt);
                    break;
                case 10:
                    zzas2 = (zzas) a.f(parcel, readInt, zzas.CREATOR);
                    break;
                case 11:
                    j3 = a.v(parcel, readInt);
                    break;
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    zzas3 = (zzas) a.f(parcel, readInt, zzas.CREATOR);
                    break;
                default:
                    a.y(parcel, readInt);
                    break;
            }
        }
        a.l(parcel, z);
        return new zzaa(str, str2, zzkg, j, z2, str3, zzas, j2, zzas2, j3, zzas3);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzaa[] newArray(int i) {
        return new zzaa[i];
    }
}
