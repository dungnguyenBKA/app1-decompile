package com.android.billingclient.api;

import android.os.Bundle;
import java.util.concurrent.Callable;

final class c1 implements Callable<Bundle> {
    private final /* synthetic */ int b;
    private final /* synthetic */ n c;
    private final /* synthetic */ String d;
    private final /* synthetic */ f e;
    private final /* synthetic */ Bundle f;
    private final /* synthetic */ d g;

    c1(d dVar, int i, n nVar, String str, f fVar, Bundle bundle) {
        this.g = dVar;
        this.b = i;
        this.c = nVar;
        this.d = str;
        this.e = fVar;
        this.f = bundle;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Bundle call() {
        return this.g.g.zza(this.b, this.g.f.getPackageName(), this.c.c(), this.d, (String) null, this.f);
    }
}
