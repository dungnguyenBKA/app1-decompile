package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;
import java.util.Objects;

final class l3 implements Runnable {
    private final k3 b;
    private final int c;
    private final Throwable d;
    private final byte[] e;
    private final String f;
    private final Map<String, List<String>> g;

    l3(String str, k3 k3Var, int i, Throwable th, byte[] bArr, Map map) {
        Objects.requireNonNull(k3Var, "null reference");
        this.b = k3Var;
        this.c = i;
        this.d = th;
        this.e = bArr;
        this.f = str;
        this.g = map;
    }

    public final void run() {
        this.b.a(this.f, this.c, this.d, this.e, this.g);
    }
}
