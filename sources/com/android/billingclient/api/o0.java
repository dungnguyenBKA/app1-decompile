package com.android.billingclient.api;

import com.android.billingclient.api.d;

final class o0 implements Runnable {
    private final /* synthetic */ d.b b;
    private final /* synthetic */ p0 c;

    o0(p0 p0Var, d.b bVar) {
        this.c = p0Var;
        this.b = bVar;
    }

    public final void run() {
        ((zzah) this.c.c).g(this.b.a(), this.b.b());
    }
}
