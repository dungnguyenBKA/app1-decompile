package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* access modifiers changed from: package-private */
public final /* synthetic */ class k4 implements Runnable {
    private final c5 b;
    private final String c;
    private final Bundle d;

    k4(c5 c5Var, String str, Bundle bundle) {
        this.b = c5Var;
        this.c = str;
        this.d = bundle;
    }

    public final void run() {
        this.b.T(this.c, this.d);
    }
}
