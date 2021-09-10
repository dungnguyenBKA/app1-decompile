package com.google.firebase;

import android.content.Context;

/* access modifiers changed from: package-private */
public final /* synthetic */ class b implements d50 {
    private final c a;
    private final Context b;

    private b(c cVar, Context context) {
        this.a = cVar;
        this.b = context;
    }

    public static d50 a(c cVar, Context context) {
        return new b(cVar, context);
    }

    @Override // defpackage.d50
    public Object get() {
        return c.r(this.a, this.b);
    }
}
