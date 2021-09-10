package com.android.billingclient.api;

import com.android.billingclient.api.g;

final class s0 implements Runnable {
    private final /* synthetic */ int b;
    private final /* synthetic */ String c;
    private final /* synthetic */ q0 d;

    s0(q0 q0Var, int i, String str) {
        this.d = q0Var;
        this.b = i;
        this.c = str;
    }

    public final void run() {
        b bVar = this.d.c;
        g.a c2 = g.c();
        c2.c(this.b);
        c2.b(this.c);
        bVar.b(c2.a());
    }
}
