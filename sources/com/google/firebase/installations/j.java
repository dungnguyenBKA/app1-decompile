package com.google.firebase.installations;

import com.google.firebase.installations.a;

class j implements n {
    private final o a;
    private final lw<l> b;

    public j(o oVar, lw<l> lwVar) {
        this.a = oVar;
        this.b = lwVar;
    }

    @Override // com.google.firebase.installations.n
    public boolean a(Exception exc) {
        this.b.d(exc);
        return true;
    }

    @Override // com.google.firebase.installations.n
    public boolean b(i50 i50) {
        if (!i50.j() || this.a.d(i50)) {
            return false;
        }
        lw<l> lwVar = this.b;
        a.b bVar = new a.b();
        bVar.d(i50.a());
        bVar.c(i50.b());
        bVar.b(i50.g());
        lwVar.c(bVar.a());
        return true;
    }
}
