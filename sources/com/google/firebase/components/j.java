package com.google.firebase.components;

/* access modifiers changed from: package-private */
public final /* synthetic */ class j implements d50 {
    private final n a;
    private final d b;

    private j(n nVar, d dVar) {
        this.a = nVar;
        this.b = dVar;
    }

    public static d50 a(n nVar, d dVar) {
        return new j(nVar, dVar);
    }

    @Override // defpackage.d50
    public Object get() {
        n nVar = this.a;
        d dVar = this.b;
        int i = n.h;
        return dVar.c().a(new c0(dVar, nVar));
    }
}
