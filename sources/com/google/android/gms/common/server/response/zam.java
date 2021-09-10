package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.server.response.FastJsonResponse;

public final class zam extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zam> CREATOR = new b();
    private final int b;
    final String c;
    final FastJsonResponse.Field<?, ?> d;

    zam(int i, String str, FastJsonResponse.Field<?, ?> field) {
        this.b = i;
        this.c = str;
        this.d = field;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.b);
        b.r(parcel, 2, this.c, false);
        b.q(parcel, 3, this.d, i, false);
        b.b(parcel, a);
    }

    zam(String str, FastJsonResponse.Field<?, ?> field) {
        this.b = 1;
        this.c = str;
        this.d = field;
    }
}
