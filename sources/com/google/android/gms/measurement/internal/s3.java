package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.n;

public final class s3 {
    private final String a;
    private final long b;
    private boolean c;
    private long d;
    final /* synthetic */ v3 e;

    public s3(v3 v3Var, String str, long j) {
        this.e = v3Var;
        n.e(str);
        this.a = str;
        this.b = j;
    }

    public final long a() {
        if (!this.c) {
            this.c = true;
            this.d = this.e.o().getLong(this.a, this.b);
        }
        return this.d;
    }

    public final void b(long j) {
        SharedPreferences.Editor edit = this.e.o().edit();
        edit.putLong(this.a, j);
        edit.apply();
        this.d = j;
    }
}
