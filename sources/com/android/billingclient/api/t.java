package com.android.billingclient.api;

import com.android.billingclient.api.g;
import com.android.billingclient.api.n;

final class t implements Runnable {
    private final /* synthetic */ n.a b;
    private final /* synthetic */ u c;

    t(u uVar, n.a aVar) {
        this.c = uVar;
        this.b = aVar;
    }

    public final void run() {
        p pVar = this.c.d;
        g.a c2 = g.c();
        c2.c(this.b.b());
        c2.b(this.b.c());
        pVar.a(c2.a(), this.b.a());
    }
}
