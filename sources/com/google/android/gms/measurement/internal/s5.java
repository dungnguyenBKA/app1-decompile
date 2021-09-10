package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public final class s5 implements Runnable {
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ Object d;
    final /* synthetic */ long e;
    final /* synthetic */ l6 f;

    s5(l6 l6Var, String str, String str2, Object obj, long j) {
        this.f = l6Var;
        this.b = str;
        this.c = str2;
        this.d = obj;
        this.e = j;
    }

    public final void run() {
        this.f.o(this.b, this.c, this.d, this.e);
    }
}
