package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.vungle.warren.error.VungleException;
import java.util.ArrayList;

public final class a implements Parcelable.Creator<GoogleSignInAccount> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final GoogleSignInAccount createFromParcel(Parcel parcel) {
        int z = com.google.android.gms.common.internal.safeparcel.a.z(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Uri uri = null;
        String str5 = null;
        String str6 = null;
        ArrayList arrayList = null;
        String str7 = null;
        String str8 = null;
        long j = 0;
        int i = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.a.t(parcel, readInt);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.a.g(parcel, readInt);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, readInt);
                    break;
                case 4:
                    str3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, readInt);
                    break;
                case 5:
                    str4 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, readInt);
                    break;
                case 6:
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.a.f(parcel, readInt, Uri.CREATOR);
                    break;
                case 7:
                    str5 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, readInt);
                    break;
                case 8:
                    j = com.google.android.gms.common.internal.safeparcel.a.v(parcel, readInt);
                    break;
                case 9:
                    str6 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, readInt);
                    break;
                case 10:
                    arrayList = com.google.android.gms.common.internal.safeparcel.a.k(parcel, readInt, Scope.CREATOR);
                    break;
                case 11:
                    str7 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, readInt);
                    break;
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    str8 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, readInt);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.y(parcel, readInt);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.l(parcel, z);
        return new GoogleSignInAccount(i, str, str2, str3, str4, uri, str5, j, str6, arrayList, str7, str8);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInAccount[] newArray(int i) {
        return new GoogleSignInAccount[i];
    }
}
