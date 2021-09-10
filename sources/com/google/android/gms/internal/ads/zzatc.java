package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.ads.AdSize;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.vungle.warren.error.VungleException;
import java.util.ArrayList;
import org.apache.http.util.LangUtils;

public final class zzatc implements Parcelable.Creator<zzatd> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzatd createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        String str = null;
        String str2 = null;
        ArrayList<String> arrayList = null;
        ArrayList<String> arrayList2 = null;
        ArrayList<String> arrayList3 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        zzatp zzatp = null;
        String str7 = null;
        String str8 = null;
        zzavj zzavj = null;
        ArrayList<String> arrayList4 = null;
        ArrayList<String> arrayList5 = null;
        zzatf zzatf = null;
        String str9 = null;
        ArrayList<String> arrayList6 = null;
        String str10 = null;
        zzawu zzawu = null;
        String str11 = null;
        Bundle bundle = null;
        ArrayList<String> arrayList7 = null;
        String str12 = null;
        String str13 = null;
        int i = 0;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        int i4 = 0;
        boolean z16 = false;
        boolean z17 = false;
        boolean z18 = false;
        boolean z19 = false;
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
                    str2 = a.g(parcel, readInt);
                    break;
                case 4:
                    arrayList = a.i(parcel, readInt);
                    break;
                case 5:
                    i2 = a.t(parcel, readInt);
                    break;
                case 6:
                    arrayList2 = a.i(parcel, readInt);
                    break;
                case 7:
                    j = a.v(parcel, readInt);
                    break;
                case 8:
                    z2 = a.m(parcel, readInt);
                    break;
                case 9:
                    j2 = a.v(parcel, readInt);
                    break;
                case 10:
                    arrayList3 = a.i(parcel, readInt);
                    break;
                case 11:
                    j3 = a.v(parcel, readInt);
                    break;
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    i3 = a.t(parcel, readInt);
                    break;
                case 13:
                    str3 = a.g(parcel, readInt);
                    break;
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    j4 = a.v(parcel, readInt);
                    break;
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    str4 = a.g(parcel, readInt);
                    break;
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                case 17:
                case 20:
                case VungleException.RENDER_ERROR /*{ENCODED_INT: 27}*/:
                case 38:
                case 41:
                default:
                    a.y(parcel, readInt);
                    break;
                case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                    z3 = a.m(parcel, readInt);
                    break;
                case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                    str5 = a.g(parcel, readInt);
                    break;
                case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                    str6 = a.g(parcel, readInt);
                    break;
                case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                    z4 = a.m(parcel, readInt);
                    break;
                case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                    z5 = a.m(parcel, readInt);
                    break;
                case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                    z6 = a.m(parcel, readInt);
                    break;
                case VungleException.OPERATION_CANCELED /*{ENCODED_INT: 25}*/:
                    z7 = a.m(parcel, readInt);
                    break;
                case VungleException.DB_ERROR /*{ENCODED_INT: 26}*/:
                    z8 = a.m(parcel, readInt);
                    break;
                case VungleException.INVALID_SIZE /*{ENCODED_INT: 28}*/:
                    zzatp = (zzatp) a.f(parcel, readInt, zzatp.CREATOR);
                    break;
                case VungleException.INCORRECT_DEFAULT_API_USAGE /*{ENCODED_INT: 29}*/:
                    str7 = a.g(parcel, readInt);
                    break;
                case VungleException.INCORRECT_BANNER_API_USAGE /*{ENCODED_INT: 30}*/:
                    str8 = a.g(parcel, readInt);
                    break;
                case VungleException.WEB_CRASH /*{ENCODED_INT: 31}*/:
                    z9 = a.m(parcel, readInt);
                    break;
                case 32:
                    z10 = a.m(parcel, readInt);
                    break;
                case VungleException.NETWORK_UNREACHABLE /*{ENCODED_INT: 33}*/:
                    zzavj = (zzavj) a.f(parcel, readInt, zzavj.CREATOR);
                    break;
                case VungleException.NETWORK_PERMISSIONS_NOT_GRANTED /*{ENCODED_INT: 34}*/:
                    arrayList4 = a.i(parcel, readInt);
                    break;
                case VungleException.OK_HTTP_NOT_SUPPORTED_PLATFORM /*{ENCODED_INT: 35}*/:
                    arrayList5 = a.i(parcel, readInt);
                    break;
                case 36:
                    z11 = a.m(parcel, readInt);
                    break;
                case LangUtils.HASH_OFFSET /*{ENCODED_INT: 37}*/:
                    zzatf = (zzatf) a.f(parcel, readInt, zzatf.CREATOR);
                    break;
                case 39:
                    str9 = a.g(parcel, readInt);
                    break;
                case 40:
                    arrayList6 = a.i(parcel, readInt);
                    break;
                case 42:
                    z12 = a.m(parcel, readInt);
                    break;
                case 43:
                    str10 = a.g(parcel, readInt);
                    break;
                case 44:
                    zzawu = (zzawu) a.f(parcel, readInt, zzawu.CREATOR);
                    break;
                case 45:
                    str11 = a.g(parcel, readInt);
                    break;
                case ModuleDescriptor.MODULE_VERSION:
                    z13 = a.m(parcel, readInt);
                    break;
                case 47:
                    z14 = a.m(parcel, readInt);
                    break;
                case 48:
                    bundle = a.c(parcel, readInt);
                    break;
                case 49:
                    z15 = a.m(parcel, readInt);
                    break;
                case AdSize.PORTRAIT_AD_HEIGHT:
                    i4 = a.t(parcel, readInt);
                    break;
                case 51:
                    z16 = a.m(parcel, readInt);
                    break;
                case 52:
                    arrayList7 = a.i(parcel, readInt);
                    break;
                case 53:
                    z17 = a.m(parcel, readInt);
                    break;
                case 54:
                    str12 = a.g(parcel, readInt);
                    break;
                case 55:
                    str13 = a.g(parcel, readInt);
                    break;
                case 56:
                    z18 = a.m(parcel, readInt);
                    break;
                case 57:
                    z19 = a.m(parcel, readInt);
                    break;
            }
        }
        a.l(parcel, z);
        return new zzatd(i, str, str2, arrayList, i2, arrayList2, j, z2, j2, arrayList3, j3, i3, str3, j4, str4, z3, str5, str6, z4, z5, z6, z7, z8, zzatp, str7, str8, z9, z10, zzavj, arrayList4, arrayList5, z11, zzatf, str9, arrayList6, z12, str10, zzawu, str11, z13, z14, bundle, z15, i4, z16, arrayList7, z17, str12, str13, z18, z19);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzatd[] newArray(int i) {
        return new zzatd[i];
    }
}
