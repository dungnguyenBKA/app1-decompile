package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.n;

public final class q3 {
    private final String a;
    private final boolean b;
    private boolean c;
    private boolean d;
    final /* synthetic */ v3 e;

    public q3(v3 v3Var, String str, boolean z) {
        this.e = v3Var;
        n.e(str);
        this.a = str;
        this.b = z;
    }

    public final boolean a() {
        if (!this.c) {
            this.c = true;
            this.d = this.e.o().getBoolean(this.a, this.b);
        }
        return this.d;
    }

    public final void b(boolean z) {
        SharedPreferences.Editor edit = this.e.o().edit();
        edit.putBoolean(this.a, z);
        edit.apply();
        this.d = z;
    }
}
