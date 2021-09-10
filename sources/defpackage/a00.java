package defpackage;

import defpackage.zz;
import java.util.Arrays;
import java.util.concurrent.Executor;

/* renamed from: a00  reason: default package */
class a00 implements jw<p30, Void> {
    final /* synthetic */ Executor a;
    final /* synthetic */ zz.b b;

    a00(zz.b bVar, Executor executor) {
        this.b = bVar;
        this.a = executor;
    }

    /* Return type fixed from 'kw' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // defpackage.jw
    public kw<Void> a(p30 p30) {
        if (p30 == null) {
            az.f().i("Received null app settings, cannot send reports at crash time.");
            return nw.d(null);
        }
        return nw.e(Arrays.asList(zz.j(zz.this), zz.this.n.m(this.a)));
    }
}
