package defpackage;

import defpackage.uc;
import defpackage.zf;

/* renamed from: le  reason: default package */
class le implements uc.a<Object> {
    final /* synthetic */ zf.a b;
    final /* synthetic */ me c;

    le(me meVar, zf.a aVar) {
        this.c = meVar;
        this.b = aVar;
    }

    @Override // defpackage.uc.a
    public void c(Exception exc) {
        if (this.c.e(this.b)) {
            this.c.g(this.b, exc);
        }
    }

    @Override // defpackage.uc.a
    public void f(Object obj) {
        if (this.c.e(this.b)) {
            this.c.f(this.b, obj);
        }
    }
}
