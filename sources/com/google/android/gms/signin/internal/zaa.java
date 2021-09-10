package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaa> CREATOR = new a();
    private final int b;
    private int c;
    private Intent d;

    public zaa() {
        this.b = 2;
        this.c = 0;
        this.d = null;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.b);
        b.k(parcel, 2, this.c);
        b.q(parcel, 3, this.d, i, false);
        b.b(parcel, a);
    }

    zaa(int i, int i2, Intent intent) {
        this.b = i;
        this.c = i2;
        this.d = intent;
    }
}
