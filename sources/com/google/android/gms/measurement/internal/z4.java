package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final class z4 implements Callable<List<f9>> {
    final /* synthetic */ String b;
    final /* synthetic */ c5 c;

    z4(c5 c5Var, String str) {
        this.c = c5Var;
        this.b = str;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<f9> call() {
        this.c.b.o();
        return this.c.b.X().S(this.b);
    }
}
