package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;

public final class q implements Parcelable.Creator<AuthAccountRequest> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final AuthAccountRequest createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        IBinder iBinder = null;
        Scope[] scopeArr = null;
        Integer num = null;
        Integer num2 = null;
        Account account = null;
        int i = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.t(parcel, readInt);
                    break;
                case 2:
                    iBinder = a.s(parcel, readInt);
                    break;
                case 3:
                    scopeArr = (Scope[]) a.j(parcel, readInt, Scope.CREATOR);
                    break;
                case 4:
                    num = a.u(parcel, readInt);
                    break;
                case 5:
                    num2 = a.u(parcel, readInt);
                    break;
                case 6:
                    account = (Account) a.f(parcel, readInt, Account.CREATOR);
                    break;
                default:
                    a.y(parcel, readInt);
                    break;
            }
        }
        a.l(parcel, z);
        return new AuthAccountRequest(i, iBinder, scopeArr, num, num2, account);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AuthAccountRequest[] newArray(int i) {
        return new AuthAccountRequest[i];
    }
}
