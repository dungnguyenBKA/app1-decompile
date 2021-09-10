package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.n;

public final class u3 {
    private final String a;
    private boolean b;
    private String c;
    final /* synthetic */ v3 d;

    public u3(v3 v3Var, String str) {
        this.d = v3Var;
        n.e(str);
        this.a = str;
    }

    public final String a() {
        if (!this.b) {
            this.b = true;
            this.c = this.d.o().getString(this.a, null);
        }
        return this.c;
    }

    public final void b(String str) {
        SharedPreferences.Editor edit = this.d.o().edit();
        edit.putString(this.a, str);
        edit.apply();
        this.c = str;
    }
}
