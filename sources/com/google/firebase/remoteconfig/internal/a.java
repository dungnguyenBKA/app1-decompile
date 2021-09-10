package com.google.firebase.remoteconfig.internal;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final /* synthetic */ class a implements Callable {
    private final e b;
    private final f c;

    private a(e eVar, f fVar) {
        this.b = eVar;
        this.c = fVar;
    }

    public static Callable a(e eVar, f fVar) {
        return new a(eVar, fVar);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        this.b.b.e(this.c);
        return null;
    }
}
