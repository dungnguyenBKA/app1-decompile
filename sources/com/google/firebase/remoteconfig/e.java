package com.google.firebase.remoteconfig;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final /* synthetic */ class e implements Callable {
    private final f b;
    private final k c;

    private e(f fVar, k kVar) {
        this.b = fVar;
        this.c = kVar;
    }

    public static Callable a(f fVar, k kVar) {
        return new e(fVar, kVar);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        this.b.h.g(this.c);
        return null;
    }
}
