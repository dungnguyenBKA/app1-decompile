package com.android.billingclient.api;

import java.util.concurrent.Callable;

final class p0 implements Callable<Void> {
    private final /* synthetic */ String b;
    final /* synthetic */ l c;
    private final /* synthetic */ d d;

    p0(d dVar, String str, l lVar) {
        this.d = dVar;
        this.b = str;
        this.c = lVar;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Void call() {
        this.d.u(new o0(this, d.x(this.d, this.b)));
        return null;
    }
}
