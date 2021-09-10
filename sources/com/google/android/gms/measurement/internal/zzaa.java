package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zzaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaa> CREATOR = new b();
    public String b;
    public String c;
    public zzkg d;
    public long e;
    public boolean f;
    public String g;
    public final zzas h;
    public long i;
    public zzas j;
    public final long k;
    public final zzas l;

    zzaa(zzaa zzaa) {
        this.b = zzaa.b;
        this.c = zzaa.c;
        this.d = zzaa.d;
        this.e = zzaa.e;
        this.f = zzaa.f;
        this.g = zzaa.g;
        this.h = zzaa.h;
        this.i = zzaa.i;
        this.j = zzaa.j;
        this.k = zzaa.k;
        this.l = zzaa.l;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a = b.a(parcel);
        b.r(parcel, 2, this.b, false);
        b.r(parcel, 3, this.c, false);
        b.q(parcel, 4, this.d, i2, false);
        b.n(parcel, 5, this.e);
        b.c(parcel, 6, this.f);
        b.r(parcel, 7, this.g, false);
        b.q(parcel, 8, this.h, i2, false);
        b.n(parcel, 9, this.i);
        b.q(parcel, 10, this.j, i2, false);
        b.n(parcel, 11, this.k);
        b.q(parcel, 12, this.l, i2, false);
        b.b(parcel, a);
    }

    zzaa(String str, String str2, zzkg zzkg, long j2, boolean z, String str3, zzas zzas, long j3, zzas zzas2, long j4, zzas zzas3) {
        this.b = str;
        this.c = str2;
        this.d = zzkg;
        this.e = j2;
        this.f = z;
        this.g = str3;
        this.h = zzas;
        this.i = j3;
        this.j = zzas2;
        this.k = j4;
        this.l = zzas3;
    }
}
