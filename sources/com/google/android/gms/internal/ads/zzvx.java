package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zzvx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvx> CREATOR = new zzwa();
    @AppOpenAd.AppOpenAdOrientation
    public final int orientation;

    public zzvx(@AppOpenAd.AppOpenAdOrientation int i) {
        this.orientation = i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 2, this.orientation);
        b.b(parcel, a);
    }
}
