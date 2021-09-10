package com.google.firebase;

import android.content.Context;
import defpackage.x50;

final /* synthetic */ class g implements x50.a {
    private static final g a = new g();

    private g() {
    }

    public static x50.a b() {
        return a;
    }

    @Override // defpackage.x50.a
    public String a(Object obj) {
        return FirebaseCommonRegistrar.a((Context) obj);
    }
}
