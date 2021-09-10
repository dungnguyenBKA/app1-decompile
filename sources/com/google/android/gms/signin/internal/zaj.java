package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zaj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaj> CREATOR = new c();
    private final int b;
    private final ConnectionResult c;
    private final ResolveAccountResponse d;

    zaj(int i, ConnectionResult connectionResult, ResolveAccountResponse resolveAccountResponse) {
        this.b = i;
        this.c = connectionResult;
        this.d = resolveAccountResponse;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.b);
        b.q(parcel, 2, this.c, i, false);
        b.q(parcel, 3, this.d, i, false);
        b.b(parcel, a);
    }

    public zaj() {
        ConnectionResult connectionResult = new ConnectionResult(8, null);
        this.b = 1;
        this.c = connectionResult;
        this.d = null;
    }
}
