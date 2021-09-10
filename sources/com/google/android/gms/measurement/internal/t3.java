package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.common.internal.n;

public final class t3 {
    final String a;
    private final String b;
    private final String c;
    private final long d;
    final /* synthetic */ v3 e;

    /* synthetic */ t3(v3 v3Var, long j) {
        this.e = v3Var;
        n.e("health_monitor");
        n.a(j > 0);
        this.a = "health_monitor:start";
        this.b = "health_monitor:count";
        this.c = "health_monitor:value";
        this.d = j;
    }

    private final void c() {
        this.e.g();
        long a2 = this.e.a.a().a();
        SharedPreferences.Editor edit = this.e.o().edit();
        edit.remove(this.b);
        edit.remove(this.c);
        edit.putLong(this.a, a2);
        edit.apply();
    }

    public final void a(String str, long j) {
        this.e.g();
        if (this.e.o().getLong(this.a, 0) == 0) {
            c();
        }
        if (str == null) {
            str = "";
        }
        long j2 = this.e.o().getLong(this.b, 0);
        if (j2 <= 0) {
            SharedPreferences.Editor edit = this.e.o().edit();
            edit.putString(this.c, str);
            edit.putLong(this.b, 1);
            edit.apply();
            return;
        }
        long nextLong = this.e.a.E().d0().nextLong();
        long j3 = j2 + 1;
        SharedPreferences.Editor edit2 = this.e.o().edit();
        if ((nextLong & Long.MAX_VALUE) < Long.MAX_VALUE / j3) {
            edit2.putString(this.c, str);
        }
        edit2.putLong(this.b, j3);
        edit2.apply();
    }

    public final Pair<String, Long> b() {
        long j;
        this.e.g();
        this.e.g();
        long j2 = this.e.o().getLong(this.a, 0);
        if (j2 == 0) {
            c();
            j = 0;
        } else {
            j = Math.abs(j2 - this.e.a.a().a());
        }
        long j3 = this.d;
        if (j < j3) {
            return null;
        }
        if (j > j3 + j3) {
            c();
            return null;
        }
        String string = this.e.o().getString(this.c, null);
        long j4 = this.e.o().getLong(this.b, 0);
        c();
        if (string == null || j4 <= 0) {
            return v3.C;
        }
        return new Pair<>(string, Long.valueOf(j4));
    }
}
