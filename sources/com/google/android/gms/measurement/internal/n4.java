package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final class n4 implements Callable<List<f9>> {
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ c5 e;

    n4(c5 c5Var, String str, String str2, String str3) {
        this.e = c5Var;
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<f9> call() {
        this.e.b.o();
        return this.e.b.X().T(this.b, this.c, this.d);
    }
}
