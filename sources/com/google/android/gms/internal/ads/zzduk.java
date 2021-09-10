package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zzduk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzduk> CREATOR = new zzduj();
    private final String packageName;
    private final int versionCode;
    private final String zzhtz;

    zzduk(int i, String str, String str2) {
        this.versionCode = i;
        this.packageName = str;
        this.zzhtz = str2;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.versionCode);
        b.r(parcel, 2, this.packageName, false);
        b.r(parcel, 3, this.zzhtz, false);
        b.b(parcel, a);
    }

    public zzduk(String str, String str2) {
        this(1, str, str2);
    }
}
