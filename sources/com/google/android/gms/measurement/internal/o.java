package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.n;

/* access modifiers changed from: package-private */
public final class o {
    final String a;
    final String b;
    final long c;
    final long d;
    final long e;
    final long f;
    final long g;
    final Long h;
    final Long i;
    final Long j;
    final Boolean k;

    o(String str, String str2, long j2, long j3, long j4, long j5, long j6, Long l, Long l2, Long l3, Boolean bool) {
        n.e(str);
        n.e(str2);
        boolean z = true;
        n.a(j2 >= 0);
        n.a(j3 >= 0);
        n.a(j4 >= 0);
        n.a(j6 < 0 ? false : z);
        this.a = str;
        this.b = str2;
        this.c = j2;
        this.d = j3;
        this.e = j4;
        this.f = j5;
        this.g = j6;
        this.h = l;
        this.i = l2;
        this.j = l3;
        this.k = bool;
    }

    /* access modifiers changed from: package-private */
    public final o a(long j2) {
        return new o(this.a, this.b, this.c, this.d, this.e, j2, this.g, this.h, this.i, this.j, this.k);
    }

    /* access modifiers changed from: package-private */
    public final o b(long j2, long j3) {
        return new o(this.a, this.b, this.c, this.d, this.e, this.f, j2, Long.valueOf(j3), this.i, this.j, this.k);
    }

    /* access modifiers changed from: package-private */
    public final o c(Long l, Long l2, Boolean bool) {
        return new o(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, l, l2, (bool == null || bool.booleanValue()) ? bool : null);
    }
}
