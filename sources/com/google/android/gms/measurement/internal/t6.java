package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public final class t6 implements Runnable {
    final /* synthetic */ r6 b;
    final /* synthetic */ r6 c;
    final /* synthetic */ long d;
    final /* synthetic */ boolean e;
    final /* synthetic */ z6 f;

    t6(z6 z6Var, r6 r6Var, r6 r6Var2, long j, boolean z) {
        this.f = z6Var;
        this.b = r6Var;
        this.c = r6Var2;
        this.d = j;
        this.e = z;
    }

    public final void run() {
        this.f.o(this.b, this.c, this.d, this.e, null);
    }
}
