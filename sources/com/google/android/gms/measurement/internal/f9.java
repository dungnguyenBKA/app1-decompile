package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.n;
import java.util.Objects;

/* access modifiers changed from: package-private */
public final class f9 {
    final String a;
    final String b;
    final String c;
    final long d;
    final Object e;

    f9(String str, String str2, String str3, long j, Object obj) {
        n.e(str);
        n.e(str3);
        Objects.requireNonNull(obj, "null reference");
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = j;
        this.e = obj;
    }
}
