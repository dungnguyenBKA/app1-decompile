package com.google.firebase.remoteconfig.internal;

import java.util.Date;

/* access modifiers changed from: package-private */
public final /* synthetic */ class h implements dw {
    private final k a;
    private final kw b;
    private final kw c;
    private final Date d;

    private h(k kVar, kw kwVar, kw kwVar2, Date date) {
        this.a = kVar;
        this.b = kwVar;
        this.c = kwVar2;
        this.d = date;
    }

    public static dw a(k kVar, kw kwVar, kw kwVar2, Date date) {
        return new h(kVar, kwVar, kwVar2, date);
    }

    @Override // defpackage.dw
    public Object then(kw kwVar) {
        return k.d(this.a, this.b, this.c, this.d);
    }
}
