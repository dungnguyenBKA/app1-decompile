package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* access modifiers changed from: package-private */
public final class s6 implements Runnable {
    final /* synthetic */ Bundle b;
    final /* synthetic */ r6 c;
    final /* synthetic */ r6 d;
    final /* synthetic */ long e;
    final /* synthetic */ z6 f;

    s6(z6 z6Var, Bundle bundle, r6 r6Var, r6 r6Var2, long j) {
        this.f = z6Var;
        this.b = bundle;
        this.c = r6Var;
        this.d = r6Var2;
        this.e = j;
    }

    public final void run() {
        z6.D(this.f, this.b, this.c, this.d, this.e);
    }
}
