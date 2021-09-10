package com.google.firebase.remoteconfig;

/* access modifiers changed from: package-private */
public final /* synthetic */ class a implements dw {
    private final f a;

    private a(f fVar) {
        this.a = fVar;
    }

    public static dw a(f fVar) {
        return new a(fVar);
    }

    @Override // defpackage.dw
    public Object then(kw kwVar) {
        return Boolean.valueOf(f.a(this.a, kwVar));
    }
}
