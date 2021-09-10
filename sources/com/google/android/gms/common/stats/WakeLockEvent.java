package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.List;

public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new f();
    private final int b;
    private final long c;
    private int d;
    private final String e;
    private final String f;
    private final String g;
    private final int h;
    private final List<String> i;
    private final String j;
    private final long k;
    private int l;
    private final String m;
    private final float n;
    private final long o;
    private final boolean p;
    private long q = -1;

    WakeLockEvent(int i2, long j2, int i3, String str, int i4, List<String> list, String str2, long j3, int i5, String str3, String str4, float f2, long j4, String str5, boolean z) {
        this.b = i2;
        this.c = j2;
        this.d = i3;
        this.e = str;
        this.f = str3;
        this.g = str5;
        this.h = i4;
        this.i = list;
        this.j = str2;
        this.k = j3;
        this.l = i5;
        this.m = str4;
        this.n = f2;
        this.o = j4;
        this.p = z;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final int i0() {
        return this.d;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long j0() {
        return this.q;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final String k0() {
        String str;
        String str2 = this.e;
        int i2 = this.h;
        List<String> list = this.i;
        String str3 = "";
        if (list == null) {
            str = str3;
        } else {
            str = TextUtils.join(",", list);
        }
        int i3 = this.l;
        String str4 = this.f;
        if (str4 == null) {
            str4 = str3;
        }
        String str5 = this.m;
        if (str5 == null) {
            str5 = str3;
        }
        float f2 = this.n;
        String str6 = this.g;
        if (str6 != null) {
            str3 = str6;
        }
        boolean z = this.p;
        StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + String.valueOf(str5).length() + String.valueOf(str4).length() + String.valueOf(str).length() + String.valueOf(str2).length() + 51);
        sb.append("\t");
        sb.append(str2);
        sb.append("\t");
        sb.append(i2);
        sb.append("\t");
        sb.append(str);
        sb.append("\t");
        sb.append(i3);
        sb.append("\t");
        sb.append(str4);
        sb.append("\t");
        sb.append(str5);
        sb.append("\t");
        sb.append(f2);
        sb.append("\t");
        sb.append(str3);
        sb.append("\t");
        sb.append(z);
        return sb.toString();
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long o() {
        return this.c;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.b);
        b.n(parcel, 2, this.c);
        b.r(parcel, 4, this.e, false);
        b.k(parcel, 5, this.h);
        b.t(parcel, 6, this.i, false);
        b.n(parcel, 8, this.k);
        b.r(parcel, 10, this.f, false);
        b.k(parcel, 11, this.d);
        b.r(parcel, 12, this.j, false);
        b.r(parcel, 13, this.m, false);
        b.k(parcel, 14, this.l);
        b.h(parcel, 15, this.n);
        b.n(parcel, 16, this.o);
        b.r(parcel, 17, this.g, false);
        b.c(parcel, 18, this.p);
        b.b(parcel, a);
    }
}
