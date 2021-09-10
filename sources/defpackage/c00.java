package defpackage;

import java.util.concurrent.Executor;

/* renamed from: c00  reason: default package */
class c00 implements jw<p30, Void> {
    final /* synthetic */ Executor a;
    final /* synthetic */ d00 b;

    c00(d00 d00, Executor executor) {
        this.b = d00;
        this.a = executor;
    }

    /* Return type fixed from 'kw' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // defpackage.jw
    public kw<Void> a(p30 p30) {
        if (p30 == null) {
            az.f().i("Received null app settings at app startup. Cannot send cached reports");
            return nw.d(null);
        }
        zz.j(zz.this);
        zz.this.n.m(this.a);
        zz.this.r.e(null);
        return nw.d(null);
    }
}
