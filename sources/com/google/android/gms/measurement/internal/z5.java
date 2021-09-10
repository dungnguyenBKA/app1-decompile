package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* access modifiers changed from: package-private */
public final class z5 implements Runnable {
    final /* synthetic */ AtomicReference b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ boolean e;
    final /* synthetic */ l6 f;

    z5(l6 l6Var, AtomicReference atomicReference, String str, String str2, boolean z) {
        this.f = l6Var;
        this.b = atomicReference;
        this.c = str;
        this.d = str2;
        this.e = z;
    }

    public final void run() {
        this.f.a.P().O(this.b, null, this.c, this.d, this.e);
    }
}
