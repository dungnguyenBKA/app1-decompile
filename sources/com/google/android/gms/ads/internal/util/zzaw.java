package com.google.android.gms.ads.internal.util;

import com.google.android.gms.common.internal.m;
import java.util.Arrays;

public final class zzaw {
    private final double a;
    private final double b;
    public final int count;
    public final String name;
    public final double zzega;

    public zzaw(String str, double d, double d2, double d3, int i) {
        this.name = str;
        this.b = d;
        this.a = d2;
        this.zzega = d3;
        this.count = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzaw)) {
            return false;
        }
        zzaw zzaw = (zzaw) obj;
        if (m.a(this.name, zzaw.name) && this.a == zzaw.a && this.b == zzaw.b && this.count == zzaw.count && Double.compare(this.zzega, zzaw.zzega) == 0) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.name, Double.valueOf(this.a), Double.valueOf(this.b), Double.valueOf(this.zzega), Integer.valueOf(this.count)});
    }

    public final String toString() {
        m.a b2 = m.b(this);
        b2.a("name", this.name);
        b2.a("minBound", Double.valueOf(this.b));
        b2.a("maxBound", Double.valueOf(this.a));
        b2.a("percent", Double.valueOf(this.zzega));
        b2.a("count", Integer.valueOf(this.count));
        return b2.toString();
    }
}
