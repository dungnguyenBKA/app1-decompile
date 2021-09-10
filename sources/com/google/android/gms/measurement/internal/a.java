package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public final class a implements Runnable {
    final /* synthetic */ String b;
    final /* synthetic */ long c;
    final /* synthetic */ a2 d;

    a(a2 a2Var, String str, long j) {
        this.d = a2Var;
        this.b = str;
        this.c = j;
    }

    public final void run() {
        a2.k(this.d, this.b, this.c);
    }
}
