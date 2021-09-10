package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;

public final class x implements Parcelable.Creator<SignInButtonConfig> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final SignInButtonConfig createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        int i = 0;
        Scope[] scopeArr = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i4 = 65535 & readInt;
            if (i4 == 1) {
                i = a.t(parcel, readInt);
            } else if (i4 == 2) {
                i2 = a.t(parcel, readInt);
            } else if (i4 == 3) {
                i3 = a.t(parcel, readInt);
            } else if (i4 != 4) {
                a.y(parcel, readInt);
            } else {
                scopeArr = (Scope[]) a.j(parcel, readInt, Scope.CREATOR);
            }
        }
        a.l(parcel, z);
        return new SignInButtonConfig(i, i2, i3, scopeArr);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInButtonConfig[] newArray(int i) {
        return new SignInButtonConfig[i];
    }
}
