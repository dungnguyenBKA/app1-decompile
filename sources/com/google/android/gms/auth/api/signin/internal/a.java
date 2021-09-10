package com.google.android.gms.auth.api.signin.internal;

public class a {
    private int a = 1;

    public a a(Object obj) {
        this.a = (31 * this.a) + (obj == null ? 0 : obj.hashCode());
        return this;
    }

    public int b() {
        return this.a;
    }

    public final a c(boolean z) {
        this.a = (31 * this.a) + (z ? 1 : 0);
        return this;
    }
}
