package com.google.android.gms.measurement.internal;

import android.content.ComponentName;

final class t7 implements Runnable {
    final /* synthetic */ ComponentName b;
    final /* synthetic */ y7 c;

    t7(y7 y7Var, ComponentName componentName) {
        this.c = y7Var;
        this.b = componentName;
    }

    public final void run() {
        z7.w(this.c.c, this.b);
    }
}
