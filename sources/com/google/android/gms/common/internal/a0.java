package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;
import com.vungle.warren.error.VungleException;

public final class a0 implements Parcelable.Creator<GetServiceRequest> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final GetServiceRequest createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        String str = null;
        IBinder iBinder = null;
        Scope[] scopeArr = null;
        Bundle bundle = null;
        Account account = null;
        Feature[] featureArr = null;
        Feature[] featureArr2 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z2 = false;
        int i4 = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.t(parcel, readInt);
                    break;
                case 2:
                    i2 = a.t(parcel, readInt);
                    break;
                case 3:
                    i3 = a.t(parcel, readInt);
                    break;
                case 4:
                    str = a.g(parcel, readInt);
                    break;
                case 5:
                    iBinder = a.s(parcel, readInt);
                    break;
                case 6:
                    scopeArr = (Scope[]) a.j(parcel, readInt, Scope.CREATOR);
                    break;
                case 7:
                    bundle = a.c(parcel, readInt);
                    break;
                case 8:
                    account = (Account) a.f(parcel, readInt, Account.CREATOR);
                    break;
                case 9:
                default:
                    a.y(parcel, readInt);
                    break;
                case 10:
                    featureArr = (Feature[]) a.j(parcel, readInt, Feature.CREATOR);
                    break;
                case 11:
                    featureArr2 = (Feature[]) a.j(parcel, readInt, Feature.CREATOR);
                    break;
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    z2 = a.m(parcel, readInt);
                    break;
                case 13:
                    i4 = a.t(parcel, readInt);
                    break;
            }
        }
        a.l(parcel, z);
        return new GetServiceRequest(i, i2, i3, str, iBinder, scopeArr, bundle, account, featureArr, featureArr2, z2, i4);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GetServiceRequest[] newArray(int i) {
        return new GetServiceRequest[i];
    }
}
