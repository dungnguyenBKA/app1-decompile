package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public class SignInButtonConfig extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInButtonConfig> CREATOR = new x();
    private final int b;
    private final int c;
    private final int d;
    @Deprecated
    private final Scope[] e;

    public SignInButtonConfig(int i, int i2) {
        this.b = 1;
        this.c = i;
        this.d = i2;
        this.e = null;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.b);
        b.k(parcel, 2, this.c);
        b.k(parcel, 3, this.d);
        b.u(parcel, 4, this.e, i, false);
        b.b(parcel, a);
    }

    SignInButtonConfig(int i, int i2, int i3, Scope[] scopeArr) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = scopeArr;
    }
}
