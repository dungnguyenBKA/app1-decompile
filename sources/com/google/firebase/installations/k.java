package com.google.firebase.installations;

import defpackage.h50;

/* access modifiers changed from: package-private */
public class k implements n {
    final lw<String> a;

    public k(lw<String> lwVar) {
        this.a = lwVar;
    }

    @Override // com.google.firebase.installations.n
    public boolean a(Exception exc) {
        return false;
    }

    @Override // com.google.firebase.installations.n
    public boolean b(i50 i50) {
        if (!(i50.f() == h50.a.UNREGISTERED) && !i50.j() && !i50.h()) {
            return false;
        }
        this.a.e(i50.c());
        return true;
    }
}
