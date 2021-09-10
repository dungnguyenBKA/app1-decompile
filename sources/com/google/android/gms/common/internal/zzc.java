package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new z();
    Bundle b;
    Feature[] c;
    private int d;

    zzc(Bundle bundle, Feature[] featureArr, int i) {
        this.b = bundle;
        this.c = featureArr;
        this.d = i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.e(parcel, 1, this.b, false);
        b.u(parcel, 2, this.c, i, false);
        b.k(parcel, 3, this.d);
        b.b(parcel, a);
    }

    public zzc() {
    }
}
