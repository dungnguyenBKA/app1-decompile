package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public class GoogleSignInOptionsExtensionParcelable extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> CREATOR = new b();
    private final int b;
    private int c;
    private Bundle d;

    GoogleSignInOptionsExtensionParcelable(int i, int i2, Bundle bundle) {
        this.b = i;
        this.c = i2;
        this.d = bundle;
    }

    public int o() {
        return this.c;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.b);
        b.k(parcel, 2, this.c);
        b.e(parcel, 3, this.d, false);
        b.b(parcel, a);
    }
}
