package com.google.android.gms.measurement.internal;

import android.content.Intent;

/* access modifiers changed from: package-private */
public final /* synthetic */ class b8 implements Runnable {
    private final f8 b;
    private final int c;
    private final i3 d;
    private final Intent e;

    b8(f8 f8Var, int i, i3 i3Var, Intent intent) {
        this.b = f8Var;
        this.c = i;
        this.d = i3Var;
        this.e = intent;
    }

    public final void run() {
        this.b.i(this.c, this.d, this.e);
    }
}
