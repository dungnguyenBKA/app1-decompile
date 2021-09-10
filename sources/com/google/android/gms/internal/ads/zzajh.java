package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zzajh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzajh> CREATOR = new zzajg();
    public final String description;
    public final String zzdit;
    public final boolean zzdiu;
    public final int zzdiv;

    public zzajh(String str, boolean z, int i, String str2) {
        this.zzdit = str;
        this.zzdiu = z;
        this.zzdiv = i;
        this.description = str2;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.r(parcel, 1, this.zzdit, false);
        b.c(parcel, 2, this.zzdiu);
        b.k(parcel, 3, this.zzdiv);
        b.r(parcel, 4, this.description, false);
        b.b(parcel, a);
    }
}
