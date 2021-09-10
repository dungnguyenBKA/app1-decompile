package com.android.billingclient.api;

import android.os.Bundle;
import java.util.Arrays;
import java.util.concurrent.Callable;

final class b1 implements Callable<Bundle> {
    private final /* synthetic */ f b;
    private final /* synthetic */ n c;
    private final /* synthetic */ d d;

    b1(d dVar, f fVar, n nVar) {
        this.d = dVar;
        this.b = fVar;
        this.c = nVar;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Bundle call() {
        return this.d.g.zza(5, this.d.f.getPackageName(), Arrays.asList(this.b.a()), this.c.c(), "subs", (String) null);
    }
}
