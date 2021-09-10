package com.google.android.gms.ads.internal.overlay;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.internal.ads.zzazn;
import com.vungle.warren.error.VungleException;

public final class zzo implements Parcelable.Creator<AdOverlayInfoParcel> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final AdOverlayInfoParcel createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        zzd zzd = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        String str = null;
        String str2 = null;
        IBinder iBinder5 = null;
        String str3 = null;
        zzazn zzazn = null;
        String str4 = null;
        zzk zzk = null;
        IBinder iBinder6 = null;
        String str5 = null;
        IBinder iBinder7 = null;
        IBinder iBinder8 = null;
        IBinder iBinder9 = null;
        IBinder iBinder10 = null;
        String str6 = null;
        boolean z2 = false;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    zzd = (zzd) a.f(parcel, readInt, zzd.CREATOR);
                    break;
                case 3:
                    iBinder = a.s(parcel, readInt);
                    break;
                case 4:
                    iBinder2 = a.s(parcel, readInt);
                    break;
                case 5:
                    iBinder3 = a.s(parcel, readInt);
                    break;
                case 6:
                    iBinder4 = a.s(parcel, readInt);
                    break;
                case 7:
                    str = a.g(parcel, readInt);
                    break;
                case 8:
                    z2 = a.m(parcel, readInt);
                    break;
                case 9:
                    str2 = a.g(parcel, readInt);
                    break;
                case 10:
                    iBinder5 = a.s(parcel, readInt);
                    break;
                case 11:
                    i = a.t(parcel, readInt);
                    break;
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    i2 = a.t(parcel, readInt);
                    break;
                case 13:
                    str3 = a.g(parcel, readInt);
                    break;
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    zzazn = (zzazn) a.f(parcel, readInt, zzazn.CREATOR);
                    break;
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                default:
                    a.y(parcel, readInt);
                    break;
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    str4 = a.g(parcel, readInt);
                    break;
                case 17:
                    zzk = (zzk) a.f(parcel, readInt, zzk.CREATOR);
                    break;
                case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                    iBinder6 = a.s(parcel, readInt);
                    break;
                case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                    str5 = a.g(parcel, readInt);
                    break;
                case 20:
                    iBinder7 = a.s(parcel, readInt);
                    break;
                case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                    iBinder8 = a.s(parcel, readInt);
                    break;
                case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                    iBinder9 = a.s(parcel, readInt);
                    break;
                case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                    iBinder10 = a.s(parcel, readInt);
                    break;
                case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                    str6 = a.g(parcel, readInt);
                    break;
            }
        }
        a.l(parcel, z);
        return new AdOverlayInfoParcel(zzd, iBinder, iBinder2, iBinder3, iBinder4, str, z2, str2, iBinder5, i, i2, str3, zzazn, str4, zzk, iBinder6, str5, iBinder7, iBinder8, iBinder9, iBinder10, str6);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdOverlayInfoParcel[] newArray(int i) {
        return new AdOverlayInfoParcel[i];
    }
}
