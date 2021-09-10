package com.google.firebase.remoteconfig;

/* access modifiers changed from: package-private */
public final /* synthetic */ class c implements dw {
    private final f a;
    private final kw b;
    private final kw c;

    private c(f fVar, kw kwVar, kw kwVar2) {
        this.a = fVar;
        this.b = kwVar;
        this.c = kwVar2;
    }

    public static dw a(f fVar, kw kwVar, kw kwVar2) {
        return new c(fVar, kwVar, kwVar2);
    }

    @Override // defpackage.dw
    public Object then(kw kwVar) {
        return f.h(this.a, this.b, this.c);
    }
}
