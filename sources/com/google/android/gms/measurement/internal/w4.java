package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final class w4 implements Callable<byte[]> {
    final /* synthetic */ zzas b;
    final /* synthetic */ String c;
    final /* synthetic */ c5 d;

    w4(c5 c5Var, zzas zzas, String str) {
        this.d = c5Var;
        this.b = zzas;
        this.c = str;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public final byte[] call() {
        this.d.b.o();
        this.d.b.b0().g();
        throw new IllegalStateException("Unexpected call on client side");
    }
}
