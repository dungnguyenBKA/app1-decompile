package com.google.android.gms.measurement.internal;

import android.os.Bundle;

final /* synthetic */ class m5 implements Runnable {
    private final l6 b;
    private final Bundle c;

    m5(l6 l6Var, Bundle bundle) {
        this.b = l6Var;
        this.c = bundle;
    }

    public final void run() {
        this.b.G(this.c);
    }
}
