package com.google.android.gms.measurement.internal;

import java.util.Map;

/* access modifiers changed from: package-private */
public final /* synthetic */ class n6 implements Runnable {
    private final o6 b;
    private final int c;
    private final Exception d;
    private final byte[] e;
    private final Map f;

    n6(o6 o6Var, int i, Exception exc, byte[] bArr, Map map) {
        this.b = o6Var;
        this.c = i;
        this.d = exc;
        this.e = bArr;
        this.f = map;
    }

    public final void run() {
        this.b.a(this.c, this.d, this.e, this.f);
    }
}
