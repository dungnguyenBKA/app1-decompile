package com.google.firebase.components;

import java.util.Objects;

public final class q {
    private final Class<?> a;
    private final int b;
    private final int c;

    private q(Class<?> cls, int i, int i2) {
        Objects.requireNonNull(cls, "Null dependency anInterface.");
        this.a = cls;
        this.b = i;
        this.c = i2;
    }

    public static q f(Class<?> cls) {
        return new q(cls, 0, 0);
    }

    public static q g(Class<?> cls) {
        return new q(cls, 0, 1);
    }

    public static q h(Class<?> cls) {
        return new q(cls, 1, 0);
    }

    public static q i(Class<?> cls) {
        return new q(cls, 2, 0);
    }

    public Class<?> a() {
        return this.a;
    }

    public boolean b() {
        return this.c == 2;
    }

    public boolean c() {
        return this.c == 0;
    }

    public boolean d() {
        return this.b == 1;
    }

    public boolean e() {
        return this.b == 2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        if (this.a == qVar.a && this.b == qVar.b && this.c == qVar.c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b) * 1000003) ^ this.c;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.a);
        sb.append(", type=");
        int i = this.b;
        sb.append(i == 1 ? "required" : i == 0 ? "optional" : "set");
        sb.append(", injection=");
        int i2 = this.c;
        if (i2 == 0) {
            str = "direct";
        } else if (i2 == 1) {
            str = "provider";
        } else if (i2 == 2) {
            str = "deferred";
        } else {
            throw new AssertionError(ic.f("Unsupported injection: ", i2));
        }
        return ic.l(sb, str, "}");
    }
}
