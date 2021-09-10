package com.android.billingclient.api;

import java.util.concurrent.Callable;

final class n0 implements Callable<Void> {
    private final /* synthetic */ h b;
    private final /* synthetic */ i c;
    private final /* synthetic */ d d;

    n0(d dVar, h hVar, i iVar) {
        this.d = dVar;
        this.b = hVar;
        this.c = iVar;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Void call() {
        d.s(this.d, this.b, this.c);
        return null;
    }
}
