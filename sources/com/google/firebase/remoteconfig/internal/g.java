package com.google.firebase.remoteconfig.internal;

/* access modifiers changed from: package-private */
public final /* synthetic */ class g implements dw {
    private final k a;
    private final long b;

    private g(k kVar, long j) {
        this.a = kVar;
        this.b = j;
    }

    public static dw a(k kVar, long j) {
        return new g(kVar, j);
    }

    @Override // defpackage.dw
    public Object then(kw kwVar) {
        return k.c(this.a, this.b, kwVar);
    }
}
