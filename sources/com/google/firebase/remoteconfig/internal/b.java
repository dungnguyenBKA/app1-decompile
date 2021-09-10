package com.google.firebase.remoteconfig.internal;

/* access modifiers changed from: package-private */
public final /* synthetic */ class b implements jw {
    private final e a;
    private final boolean b;
    private final f c;

    private b(e eVar, boolean z, f fVar) {
        this.a = eVar;
        this.b = z;
        this.c = fVar;
    }

    public static jw b(e eVar, boolean z, f fVar) {
        return new b(eVar, z, fVar);
    }

    @Override // defpackage.jw
    public kw a(Object obj) {
        Void r4 = (Void) obj;
        return e.g(this.a, this.b, this.c);
    }
}
