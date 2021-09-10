package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.List;

public final class zzp extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzp> CREATOR = new m9();
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final long f;
    public final long g;
    public final String h;
    public final boolean i;
    public final boolean j;
    public final long k;
    public final String l;
    public final long m;
    public final long n;
    public final int o;
    public final boolean p;
    public final boolean q;
    public final String r;
    public final Boolean s;
    public final long t;
    public final List<String> u;
    public final String v;
    public final String w;

    zzp(String str, String str2, String str3, long j2, String str4, long j3, long j4, String str5, boolean z, boolean z2, String str6, long j5, long j6, int i2, boolean z3, boolean z4, String str7, Boolean bool, long j7, List<String> list, String str8, String str9) {
        n.e(str);
        this.b = str;
        this.c = true != TextUtils.isEmpty(str2) ? str2 : null;
        this.d = str3;
        this.k = j2;
        this.e = str4;
        this.f = j3;
        this.g = j4;
        this.h = str5;
        this.i = z;
        this.j = z2;
        this.l = str6;
        this.m = j5;
        this.n = j6;
        this.o = i2;
        this.p = z3;
        this.q = z4;
        this.r = str7;
        this.s = bool;
        this.t = j7;
        this.u = list;
        this.v = str8;
        this.w = str9;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a = b.a(parcel);
        b.r(parcel, 2, this.b, false);
        b.r(parcel, 3, this.c, false);
        b.r(parcel, 4, this.d, false);
        b.r(parcel, 5, this.e, false);
        b.n(parcel, 6, this.f);
        b.n(parcel, 7, this.g);
        b.r(parcel, 8, this.h, false);
        b.c(parcel, 9, this.i);
        b.c(parcel, 10, this.j);
        b.n(parcel, 11, this.k);
        b.r(parcel, 12, this.l, false);
        b.n(parcel, 13, this.m);
        b.n(parcel, 14, this.n);
        b.k(parcel, 15, this.o);
        b.c(parcel, 16, this.p);
        b.c(parcel, 18, this.q);
        b.r(parcel, 19, this.r, false);
        b.d(parcel, 21, this.s, false);
        b.n(parcel, 22, this.t);
        b.t(parcel, 23, this.u, false);
        b.r(parcel, 24, this.v, false);
        b.r(parcel, 25, this.w, false);
        b.b(parcel, a);
    }

    zzp(String str, String str2, String str3, String str4, long j2, long j3, String str5, boolean z, boolean z2, long j4, String str6, long j5, long j6, int i2, boolean z3, boolean z4, String str7, Boolean bool, long j7, List<String> list, String str8, String str9) {
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.k = j4;
        this.e = str4;
        this.f = j2;
        this.g = j3;
        this.h = str5;
        this.i = z;
        this.j = z2;
        this.l = str6;
        this.m = j5;
        this.n = j6;
        this.o = i2;
        this.p = z3;
        this.q = z4;
        this.r = str7;
        this.s = bool;
        this.t = j7;
        this.u = list;
        this.v = str8;
        this.w = str9;
    }
}
