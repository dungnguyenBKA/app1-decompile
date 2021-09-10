package com.google.android.gms.measurement.internal;

import android.os.Bundle;

final class y8 implements Runnable {
    final /* synthetic */ String b;
    final /* synthetic */ Bundle c;
    final /* synthetic */ z8 d;

    y8(z8 z8Var, String str, Bundle bundle) {
        this.d = z8Var;
        this.b = str;
        this.c = bundle;
    }

    public final void run() {
        this.d.a.l0(this.d.a.e0().I(this.b, "_err", this.c, "auto", this.d.a.a().a(), false, false), this.b);
    }
}
