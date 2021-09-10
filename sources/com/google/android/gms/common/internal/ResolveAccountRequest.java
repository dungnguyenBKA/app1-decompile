package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public class ResolveAccountRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ResolveAccountRequest> CREATOR = new v();
    private final int b;
    private final Account c;
    private final int d;
    private final GoogleSignInAccount e;

    ResolveAccountRequest(int i, Account account, int i2, GoogleSignInAccount googleSignInAccount) {
        this.b = i;
        this.c = account;
        this.d = i2;
        this.e = googleSignInAccount;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.b);
        b.q(parcel, 2, this.c, i, false);
        b.k(parcel, 3, this.d);
        b.q(parcel, 4, this.e, i, false);
        b.b(parcel, a);
    }
}
