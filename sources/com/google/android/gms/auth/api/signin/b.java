package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.ArrayList;

public final class b implements Parcelable.Creator<GoogleSignInOptions> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final GoogleSignInOptions createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        ArrayList arrayList = null;
        Account account = null;
        String str = null;
        String str2 = null;
        ArrayList arrayList2 = null;
        int i = 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.t(parcel, readInt);
                    break;
                case 2:
                    arrayList = a.k(parcel, readInt, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) a.f(parcel, readInt, Account.CREATOR);
                    break;
                case 4:
                    z2 = a.m(parcel, readInt);
                    break;
                case 5:
                    z3 = a.m(parcel, readInt);
                    break;
                case 6:
                    z4 = a.m(parcel, readInt);
                    break;
                case 7:
                    str = a.g(parcel, readInt);
                    break;
                case 8:
                    str2 = a.g(parcel, readInt);
                    break;
                case 9:
                    arrayList2 = a.k(parcel, readInt, GoogleSignInOptionsExtensionParcelable.CREATOR);
                    break;
                default:
                    a.y(parcel, readInt);
                    break;
            }
        }
        a.l(parcel, z);
        return new GoogleSignInOptions(i, arrayList, account, z2, z3, z4, str, str2, arrayList2);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInOptions[] newArray(int i) {
        return new GoogleSignInOptions[i];
    }
}
