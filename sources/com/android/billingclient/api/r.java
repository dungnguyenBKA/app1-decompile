package com.android.billingclient.api;

import com.android.billingclient.api.j;
import java.util.concurrent.Callable;

final class r implements Callable<j.a> {
    private final /* synthetic */ String b;
    private final /* synthetic */ d c;

    r(d dVar, String str) {
        this.c = dVar;
        this.b = str;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public final /* synthetic */ j.a call() {
        return d.n(this.c, this.b);
    }
}
