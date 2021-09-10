package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zah extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zah> CREATOR = new b();
    private final int b;
    private final ResolveAccountRequest c;

    zah(int i, ResolveAccountRequest resolveAccountRequest) {
        this.b = i;
        this.c = resolveAccountRequest;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.b);
        b.q(parcel, 2, this.c, i, false);
        b.b(parcel, a);
    }
}
