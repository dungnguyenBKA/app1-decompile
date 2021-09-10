package com.google.billingclient;

import java.util.Objects;

public final /* synthetic */ class a implements Runnable {
    public final /* synthetic */ g b;

    public /* synthetic */ a(g gVar) {
        this.b = gVar;
    }

    public final void run() {
        g gVar = this.b;
        Objects.requireNonNull(gVar);
        new ve0(new d(gVar)).e(nf0.c()).a(yd0.a()).b(new c(gVar), e.a, oe0.b, oe0.a());
    }
}
