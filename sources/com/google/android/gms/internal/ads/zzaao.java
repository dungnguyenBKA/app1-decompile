package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zzaao extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaao> CREATOR = new zzaar();
    private final int zzado;
    private final int zzadp;

    public zzaao(int i, int i2) {
        this.zzado = i;
        this.zzadp = i2;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.zzado);
        b.k(parcel, 2, this.zzadp);
        b.b(parcel, a);
    }

    public zzaao(RequestConfiguration requestConfiguration) {
        this.zzado = requestConfiguration.getTagForChildDirectedTreatment();
        this.zzadp = requestConfiguration.getTagForUnderAgeOfConsent();
    }
}
