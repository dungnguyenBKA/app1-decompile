package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.util.d;
import java.util.Objects;

/* access modifiers changed from: package-private */
public final class p8 {
    private final d a;
    private long b;

    public p8(d dVar) {
        Objects.requireNonNull(dVar, "null reference");
        this.a = dVar;
    }

    public final void a() {
        this.b = this.a.b();
    }

    public final void b() {
        this.b = 0;
    }

    public final boolean c() {
        return this.b == 0 || this.a.b() - this.b >= 3600000;
    }
}
