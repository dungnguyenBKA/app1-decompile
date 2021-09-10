package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.ads.AdSize;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.vungle.warren.error.VungleException;
import java.util.ArrayList;
import org.apache.http.util.LangUtils;

public final class zzata implements Parcelable.Creator<zzatb> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzatb createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        long j = 0;
        long j2 = 0;
        int i = 0;
        Bundle bundle = null;
        zzvl zzvl = null;
        zzvs zzvs = null;
        String str = null;
        ApplicationInfo applicationInfo = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        zzazn zzazn = null;
        Bundle bundle2 = null;
        int i2 = 0;
        ArrayList<String> arrayList = null;
        Bundle bundle3 = null;
        boolean z2 = false;
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        String str5 = null;
        String str6 = null;
        ArrayList<String> arrayList2 = null;
        String str7 = null;
        zzaeh zzaeh = null;
        ArrayList<String> arrayList3 = null;
        String str8 = null;
        float f2 = 0.0f;
        boolean z3 = false;
        int i5 = 0;
        int i6 = 0;
        boolean z4 = false;
        String str9 = null;
        String str10 = null;
        boolean z5 = false;
        int i7 = 0;
        Bundle bundle4 = null;
        String str11 = null;
        zzzi zzzi = null;
        boolean z6 = false;
        Bundle bundle5 = null;
        String str12 = null;
        String str13 = null;
        String str14 = null;
        boolean z7 = false;
        ArrayList arrayList4 = null;
        String str15 = null;
        ArrayList<String> arrayList5 = null;
        int i8 = 0;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        ArrayList<String> arrayList6 = null;
        String str16 = null;
        zzajt zzajt = null;
        String str17 = null;
        Bundle bundle6 = null;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.t(parcel, readInt);
                    break;
                case 2:
                    bundle = a.c(parcel, readInt);
                    break;
                case 3:
                    zzvl = (zzvl) a.f(parcel, readInt, zzvl.CREATOR);
                    break;
                case 4:
                    zzvs = (zzvs) a.f(parcel, readInt, zzvs.CREATOR);
                    break;
                case 5:
                    str = a.g(parcel, readInt);
                    break;
                case 6:
                    applicationInfo = (ApplicationInfo) a.f(parcel, readInt, ApplicationInfo.CREATOR);
                    break;
                case 7:
                    packageInfo = (PackageInfo) a.f(parcel, readInt, PackageInfo.CREATOR);
                    break;
                case 8:
                    str2 = a.g(parcel, readInt);
                    break;
                case 9:
                    str3 = a.g(parcel, readInt);
                    break;
                case 10:
                    str4 = a.g(parcel, readInt);
                    break;
                case 11:
                    zzazn = (zzazn) a.f(parcel, readInt, zzazn.CREATOR);
                    break;
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    bundle2 = a.c(parcel, readInt);
                    break;
                case 13:
                    i2 = a.t(parcel, readInt);
                    break;
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    arrayList = a.i(parcel, readInt);
                    break;
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    bundle3 = a.c(parcel, readInt);
                    break;
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    z2 = a.m(parcel, readInt);
                    break;
                case 17:
                case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                case 32:
                case 38:
                case 62:
                default:
                    a.y(parcel, readInt);
                    break;
                case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                    i3 = a.t(parcel, readInt);
                    break;
                case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                    i4 = a.t(parcel, readInt);
                    break;
                case 20:
                    f = a.q(parcel, readInt);
                    break;
                case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                    str5 = a.g(parcel, readInt);
                    break;
                case VungleException.OPERATION_CANCELED /*{ENCODED_INT: 25}*/:
                    j = a.v(parcel, readInt);
                    break;
                case VungleException.DB_ERROR /*{ENCODED_INT: 26}*/:
                    str6 = a.g(parcel, readInt);
                    break;
                case VungleException.RENDER_ERROR /*{ENCODED_INT: 27}*/:
                    arrayList2 = a.i(parcel, readInt);
                    break;
                case VungleException.INVALID_SIZE /*{ENCODED_INT: 28}*/:
                    str7 = a.g(parcel, readInt);
                    break;
                case VungleException.INCORRECT_DEFAULT_API_USAGE /*{ENCODED_INT: 29}*/:
                    zzaeh = (zzaeh) a.f(parcel, readInt, zzaeh.CREATOR);
                    break;
                case VungleException.INCORRECT_BANNER_API_USAGE /*{ENCODED_INT: 30}*/:
                    arrayList3 = a.i(parcel, readInt);
                    break;
                case VungleException.WEB_CRASH /*{ENCODED_INT: 31}*/:
                    j2 = a.v(parcel, readInt);
                    break;
                case VungleException.NETWORK_UNREACHABLE /*{ENCODED_INT: 33}*/:
                    str8 = a.g(parcel, readInt);
                    break;
                case VungleException.NETWORK_PERMISSIONS_NOT_GRANTED /*{ENCODED_INT: 34}*/:
                    f2 = a.q(parcel, readInt);
                    break;
                case VungleException.OK_HTTP_NOT_SUPPORTED_PLATFORM /*{ENCODED_INT: 35}*/:
                    i5 = a.t(parcel, readInt);
                    break;
                case 36:
                    i6 = a.t(parcel, readInt);
                    break;
                case LangUtils.HASH_OFFSET /*{ENCODED_INT: 37}*/:
                    z4 = a.m(parcel, readInt);
                    break;
                case 39:
                    str9 = a.g(parcel, readInt);
                    break;
                case 40:
                    z3 = a.m(parcel, readInt);
                    break;
                case 41:
                    str10 = a.g(parcel, readInt);
                    break;
                case 42:
                    z5 = a.m(parcel, readInt);
                    break;
                case 43:
                    i7 = a.t(parcel, readInt);
                    break;
                case 44:
                    bundle4 = a.c(parcel, readInt);
                    break;
                case 45:
                    str11 = a.g(parcel, readInt);
                    break;
                case ModuleDescriptor.MODULE_VERSION:
                    zzzi = (zzzi) a.f(parcel, readInt, zzzi.CREATOR);
                    break;
                case 47:
                    z6 = a.m(parcel, readInt);
                    break;
                case 48:
                    bundle5 = a.c(parcel, readInt);
                    break;
                case 49:
                    str12 = a.g(parcel, readInt);
                    break;
                case AdSize.PORTRAIT_AD_HEIGHT:
                    str13 = a.g(parcel, readInt);
                    break;
                case 51:
                    str14 = a.g(parcel, readInt);
                    break;
                case 52:
                    z7 = a.m(parcel, readInt);
                    break;
                case 53:
                    int x = a.x(parcel, readInt);
                    int dataPosition = parcel.dataPosition();
                    if (x == 0) {
                        arrayList4 = null;
                        break;
                    } else {
                        ArrayList arrayList7 = new ArrayList();
                        int readInt2 = parcel.readInt();
                        for (int i9 = 0; i9 < readInt2; i9++) {
                            arrayList7.add(Integer.valueOf(parcel.readInt()));
                        }
                        parcel.setDataPosition(dataPosition + x);
                        arrayList4 = arrayList7;
                        break;
                    }
                case 54:
                    str15 = a.g(parcel, readInt);
                    break;
                case 55:
                    arrayList5 = a.i(parcel, readInt);
                    break;
                case 56:
                    i8 = a.t(parcel, readInt);
                    break;
                case 57:
                    z8 = a.m(parcel, readInt);
                    break;
                case 58:
                    z9 = a.m(parcel, readInt);
                    break;
                case 59:
                    z10 = a.m(parcel, readInt);
                    break;
                case 60:
                    arrayList6 = a.i(parcel, readInt);
                    break;
                case 61:
                    str16 = a.g(parcel, readInt);
                    break;
                case 63:
                    zzajt = (zzajt) a.f(parcel, readInt, zzajt.CREATOR);
                    break;
                case 64:
                    str17 = a.g(parcel, readInt);
                    break;
                case 65:
                    bundle6 = a.c(parcel, readInt);
                    break;
            }
        }
        a.l(parcel, z);
        return new zzatb(i, bundle, zzvl, zzvs, str, applicationInfo, packageInfo, str2, str3, str4, zzazn, bundle2, i2, arrayList, bundle3, z2, i3, i4, f, str5, j, str6, arrayList2, str7, zzaeh, arrayList3, j2, str8, f2, z3, i5, i6, z4, str9, str10, z5, i7, bundle4, str11, zzzi, z6, bundle5, str12, str13, str14, z7, arrayList4, str15, arrayList5, i8, z8, z9, z10, arrayList6, str16, zzajt, str17, bundle6);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzatb[] newArray(int i) {
        return new zzatb[i];
    }
}
