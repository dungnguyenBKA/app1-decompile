package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public class AuthAccountRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AuthAccountRequest> CREATOR = new q();
    private final int b;
    @Deprecated
    private final IBinder c;
    private final Scope[] d;
    private Integer e;
    private Integer f;
    private Account g;

    AuthAccountRequest(int i, IBinder iBinder, Scope[] scopeArr, Integer num, Integer num2, Account account) {
        this.b = i;
        this.c = iBinder;
        this.d = scopeArr;
        this.e = num;
        this.f = num2;
        this.g = account;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.b);
        b.j(parcel, 2, this.c, false);
        b.u(parcel, 3, this.d, i, false);
        b.m(parcel, 4, this.e, false);
        b.m(parcel, 5, this.f, false);
        b.q(parcel, 6, this.g, i, false);
        b.b(parcel, a);
    }
}
