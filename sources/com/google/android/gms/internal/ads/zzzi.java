package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zzzi extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzzi> CREATOR = new zzzh();
    private final int zzcjy;

    public zzzi(int i) {
        this.zzcjy = i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 2, this.zzcjy);
        b.b(parcel, a);
    }
}
