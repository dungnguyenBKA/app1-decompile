package com.google.firebase.remoteconfig.internal;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final /* synthetic */ class c implements Callable {
    private final o b;

    private c(o oVar) {
        this.b = oVar;
    }

    public static Callable a(o oVar) {
        return new c(oVar);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        return this.b.d();
    }
}
