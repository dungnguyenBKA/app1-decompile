package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.vungle.warren.error.VungleException;

public final class zzvr implements Parcelable.Creator<zzvs> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzvs createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        zzvs[] zzvsArr = null;
        int i = 0;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        int i4 = 0;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = a.g(parcel, readInt);
                    break;
                case 3:
                    i = a.t(parcel, readInt);
                    break;
                case 4:
                    i2 = a.t(parcel, readInt);
                    break;
                case 5:
                    z2 = a.m(parcel, readInt);
                    break;
                case 6:
                    i3 = a.t(parcel, readInt);
                    break;
                case 7:
                    i4 = a.t(parcel, readInt);
                    break;
                case 8:
                    zzvsArr = (zzvs[]) a.j(parcel, readInt, zzvs.CREATOR);
                    break;
                case 9:
                    z3 = a.m(parcel, readInt);
                    break;
                case 10:
                    z4 = a.m(parcel, readInt);
                    break;
                case 11:
                    z5 = a.m(parcel, readInt);
                    break;
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    z6 = a.m(parcel, readInt);
                    break;
                case 13:
                    z7 = a.m(parcel, readInt);
                    break;
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    z8 = a.m(parcel, readInt);
                    break;
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    z9 = a.m(parcel, readInt);
                    break;
                default:
                    a.y(parcel, readInt);
                    break;
            }
        }
        a.l(parcel, z);
        return new zzvs(str, i, i2, z2, i3, i4, zzvsArr, z3, z4, z5, z6, z7, z8, z9);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvs[] newArray(int i) {
        return new zzvs[i];
    }
}
