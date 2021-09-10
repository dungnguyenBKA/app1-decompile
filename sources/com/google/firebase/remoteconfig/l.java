package com.google.firebase.remoteconfig;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final /* synthetic */ class l implements Callable {
    private final n b;

    private l(n nVar) {
        this.b = nVar;
    }

    public static Callable a(n nVar) {
        return new l(nVar);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        return this.b.c();
    }
}
