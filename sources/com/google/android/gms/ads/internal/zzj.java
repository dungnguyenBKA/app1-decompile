package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class zzj implements Parcelable.Creator<zzk> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzk createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        float f = 0.0f;
        int i = 0;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    z2 = a.m(parcel, readInt);
                    break;
                case 3:
                    z3 = a.m(parcel, readInt);
                    break;
                case 4:
                    str = a.g(parcel, readInt);
                    break;
                case 5:
                    z4 = a.m(parcel, readInt);
                    break;
                case 6:
                    f = a.q(parcel, readInt);
                    break;
                case 7:
                    i = a.t(parcel, readInt);
                    break;
                case 8:
                    z5 = a.m(parcel, readInt);
                    break;
                case 9:
                    z6 = a.m(parcel, readInt);
                    break;
                case 10:
                    z7 = a.m(parcel, readInt);
                    break;
                default:
                    a.y(parcel, readInt);
                    break;
            }
        }
        a.l(parcel, z);
        return new zzk(z2, z3, str, z4, f, i, z5, z6, z7);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzk[] newArray(int i) {
        return new zzk[i];
    }
}
