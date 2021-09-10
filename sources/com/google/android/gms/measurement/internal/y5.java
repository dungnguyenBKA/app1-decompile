package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* access modifiers changed from: package-private */
public final class y5 implements Runnable {
    final /* synthetic */ AtomicReference b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ l6 e;

    y5(l6 l6Var, AtomicReference atomicReference, String str, String str2) {
        this.e = l6Var;
        this.b = atomicReference;
        this.c = str;
        this.d = str2;
    }

    public final void run() {
        this.e.a.P().M(this.b, null, this.c, this.d);
    }
}
