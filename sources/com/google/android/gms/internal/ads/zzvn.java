package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.vungle.warren.error.VungleException;
import java.util.ArrayList;

public final class zzvn implements Parcelable.Creator<zzvl> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final zzvl createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        Bundle bundle = null;
        ArrayList<String> arrayList = null;
        String str = null;
        zzaaq zzaaq = null;
        Location location = null;
        String str2 = null;
        Bundle bundle2 = null;
        Bundle bundle3 = null;
        ArrayList<String> arrayList2 = null;
        String str3 = null;
        String str4 = null;
        zzve zzve = null;
        String str5 = null;
        ArrayList<String> arrayList3 = null;
        long j = 0;
        int i = 0;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        boolean z3 = false;
        boolean z4 = false;
        int i4 = 0;
        int i5 = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.t(parcel, readInt);
                    break;
                case 2:
                    j = a.v(parcel, readInt);
                    break;
                case 3:
                    bundle = a.c(parcel, readInt);
                    break;
                case 4:
                    i2 = a.t(parcel, readInt);
                    break;
                case 5:
                    arrayList = a.i(parcel, readInt);
                    break;
                case 6:
                    z2 = a.m(parcel, readInt);
                    break;
                case 7:
                    i3 = a.t(parcel, readInt);
                    break;
                case 8:
                    z3 = a.m(parcel, readInt);
                    break;
                case 9:
                    str = a.g(parcel, readInt);
                    break;
                case 10:
                    zzaaq = (zzaaq) a.f(parcel, readInt, zzaaq.CREATOR);
                    break;
                case 11:
                    location = (Location) a.f(parcel, readInt, Location.CREATOR);
                    break;
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    str2 = a.g(parcel, readInt);
                    break;
                case 13:
                    bundle2 = a.c(parcel, readInt);
                    break;
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    bundle3 = a.c(parcel, readInt);
                    break;
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    arrayList2 = a.i(parcel, readInt);
                    break;
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    str3 = a.g(parcel, readInt);
                    break;
                case 17:
                    str4 = a.g(parcel, readInt);
                    break;
                case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                    z4 = a.m(parcel, readInt);
                    break;
                case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                    zzve = (zzve) a.f(parcel, readInt, zzve.CREATOR);
                    break;
                case 20:
                    i4 = a.t(parcel, readInt);
                    break;
                case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                    str5 = a.g(parcel, readInt);
                    break;
                case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                    arrayList3 = a.i(parcel, readInt);
                    break;
                case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                    i5 = a.t(parcel, readInt);
                    break;
                default:
                    a.y(parcel, readInt);
                    break;
            }
        }
        a.l(parcel, z);
        return new zzvl(i, j, bundle, i2, arrayList, z2, i3, z3, str, zzaaq, location, str2, bundle2, bundle3, arrayList2, str3, str4, z4, zzve, i4, str5, arrayList3, i5);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvl[] newArray(int i) {
        return new zzvl[i];
    }
}
