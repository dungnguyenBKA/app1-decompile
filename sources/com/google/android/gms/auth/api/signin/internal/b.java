package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

public final class b implements Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    public final GoogleSignInOptionsExtensionParcelable createFromParcel(Parcel parcel) {
        int z = a.z(parcel);
        int i = 0;
        Bundle bundle = null;
        int i2 = 0;
        while (parcel.dataPosition() < z) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i = a.t(parcel, readInt);
            } else if (i3 == 2) {
                i2 = a.t(parcel, readInt);
            } else if (i3 != 3) {
                a.y(parcel, readInt);
            } else {
                bundle = a.c(parcel, readInt);
            }
        }
        a.l(parcel, z);
        return new GoogleSignInOptionsExtensionParcelable(i, i2, bundle);
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInOptionsExtensionParcelable[] newArray(int i) {
        return new GoogleSignInOptionsExtensionParcelable[i];
    }
}
