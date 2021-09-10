package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.a;

public final class v implements Parcelable.Creator<ResolveAccountRequest> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final ResolveAccountRequest createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        Account account = null;
        GoogleSignInAccount googleSignInAccount = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i = a.t(parcel, readInt);
            } else if (i3 == 2) {
                account = (Account) a.f(parcel, readInt, Account.CREATOR);
            } else if (i3 == 3) {
                i2 = a.t(parcel, readInt);
            } else if (i3 != 4) {
                a.y(parcel, readInt);
            } else {
                googleSignInAccount = (GoogleSignInAccount) a.f(parcel, readInt, GoogleSignInAccount.CREATOR);
            }
        }
        a.l(parcel, z);
        return new ResolveAccountRequest(i, account, i2, googleSignInAccount);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ResolveAccountRequest[] newArray(int i) {
        return new ResolveAccountRequest[i];
    }
}
