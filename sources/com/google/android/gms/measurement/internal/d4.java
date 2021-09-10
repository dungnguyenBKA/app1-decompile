package com.google.android.gms.measurement.internal;

import java.lang.Thread;

/* access modifiers changed from: package-private */
public final class d4 implements Thread.UncaughtExceptionHandler {
    private final String a;
    final /* synthetic */ g4 b;

    public d4(g4 g4Var, String str) {
        this.b = g4Var;
        this.a = str;
    }

    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        this.b.a.c().n().b(this.a, th);
    }
}
