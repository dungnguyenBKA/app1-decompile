package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zzduu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzduu> CREATOR = new zzdut();
    private final int versionCode;
    private final String zzhsu;
    private final String zzhsv;
    private final int zzhsw;
    private final int zzhum;

    zzduu(int i, int i2, int i3, String str, String str2) {
        this.versionCode = i;
        this.zzhsw = i2;
        this.zzhsu = str;
        this.zzhsv = str2;
        this.zzhum = i3;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.versionCode);
        b.k(parcel, 2, this.zzhsw);
        b.r(parcel, 3, this.zzhsu, false);
        b.r(parcel, 4, this.zzhsv, false);
        b.k(parcel, 5, this.zzhum);
        b.b(parcel, a);
    }

    public zzduu(int i, zzgp zzgp, String str, String str2) {
        this(1, i, zzgp.zzv(), str, str2);
    }
}
