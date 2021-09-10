package com.airbnb.lottie;

import java.util.Arrays;

public final class m<V> {
    private final V a;
    private final Throwable b;

    public m(V v) {
        this.a = v;
        this.b = null;
    }

    public Throwable a() {
        return this.b;
    }

    public V b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        V v = this.a;
        if (v != null && v.equals(mVar.a)) {
            return true;
        }
        Throwable th = this.b;
        if (th == null || mVar.b == null) {
            return false;
        }
        return th.toString().equals(this.b.toString());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b});
    }

    public m(Throwable th) {
        this.b = th;
        this.a = null;
    }
}
