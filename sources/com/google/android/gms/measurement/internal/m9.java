package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.vungle.warren.error.VungleException;
import java.util.ArrayList;

public final class m9 implements Parcelable.Creator<zzp> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzp createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        long j5 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        Boolean bool = null;
        ArrayList<String> arrayList = null;
        String str8 = null;
        String str9 = "";
        long j6 = -2147483648L;
        boolean z2 = true;
        boolean z3 = false;
        int i = 0;
        boolean z4 = true;
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
                    str3 = a.g(parcel, readInt);
                    break;
                case 5:
                    str4 = a.g(parcel, readInt);
                    break;
                case 6:
                    j = a.v(parcel, readInt);
                    break;
                case 7:
                    j2 = a.v(parcel, readInt);
                    break;
                case 8:
                    str5 = a.g(parcel, readInt);
                    break;
                case 9:
                    z2 = a.m(parcel, readInt);
                    break;
                case 10:
                    z3 = a.m(parcel, readInt);
                    break;
                case 11:
                    j6 = a.v(parcel, readInt);
                    break;
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    str6 = a.g(parcel, readInt);
                    break;
                case 13:
                    j3 = a.v(parcel, readInt);
                    break;
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    j4 = a.v(parcel, readInt);
                    break;
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    i = a.t(parcel, readInt);
                    break;
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    z4 = a.m(parcel, readInt);
                    break;
                case 17:
                case 20:
                default:
                    a.y(parcel, readInt);
                    break;
                case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                    z5 = a.m(parcel, readInt);
                    break;
                case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                    str7 = a.g(parcel, readInt);
                    break;
                case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                    bool = a.n(parcel, readInt);
                    break;
                case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                    j5 = a.v(parcel, readInt);
                    break;
                case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                    arrayList = a.i(parcel, readInt);
                    break;
                case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                    str8 = a.g(parcel, readInt);
                    break;
                case VungleException.OPERATION_CANCELED /*{ENCODED_INT: 25}*/:
                    str9 = a.g(parcel, readInt);
                    break;
            }
        }
        a.l(parcel, z);
        return new zzp(str, str2, str3, str4, j, j2, str5, z2, z3, j6, str6, j3, j4, i, z4, z5, str7, bool, j5, arrayList, str8, str9);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzp[] newArray(int i) {
        return new zzp[i];
    }
}
