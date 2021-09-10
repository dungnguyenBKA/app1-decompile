package com.android.billingclient.api;

import android.os.Bundle;
import java.util.concurrent.Callable;

final class s implements Callable<Bundle> {
    private final /* synthetic */ n b;
    private final /* synthetic */ String c;
    private final /* synthetic */ d d;

    s(d dVar, n nVar, String str) {
        this.d = dVar;
        this.b = nVar;
        this.c = str;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Bundle call() {
        return this.d.g.zza(3, this.d.f.getPackageName(), this.b.c(), this.c, (String) null);
    }
}
