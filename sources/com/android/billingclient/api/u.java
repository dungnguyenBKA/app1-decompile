package com.android.billingclient.api;

import java.util.List;
import java.util.concurrent.Callable;

final class u implements Callable<Void> {
    private final /* synthetic */ String b;
    private final /* synthetic */ List c;
    final /* synthetic */ p d;
    private final /* synthetic */ d e;

    u(d dVar, String str, List list, String str2, p pVar) {
        this.e = dVar;
        this.b = str;
        this.c = list;
        this.d = pVar;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Void call() {
        this.e.u(new t(this, this.e.o(this.b, this.c, null)));
        return null;
    }
}
