package com.google.firebase.remoteconfig.internal;

import java.util.Date;

/* access modifiers changed from: package-private */
public final /* synthetic */ class i implements dw {
    private final k a;
    private final Date b;

    private i(k kVar, Date date) {
        this.a = kVar;
        this.b = date;
    }

    public static dw a(k kVar, Date date) {
        return new i(kVar, date);
    }

    @Override // defpackage.dw
    public Object then(kw kwVar) {
        k.e(this.a, this.b, kwVar);
        return kwVar;
    }
}
