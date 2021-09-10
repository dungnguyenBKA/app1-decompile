package defpackage;

import defpackage.zz;
import java.io.File;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* renamed from: d00  reason: default package */
class d00 implements Callable<kw<Void>> {
    final /* synthetic */ Boolean b;
    final /* synthetic */ zz.c c;

    d00(zz.c cVar, Boolean bool) {
        this.c = cVar;
        this.b = bool;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public kw<Void> call() {
        if (!this.b.booleanValue()) {
            az.f().h("Deleting cached crash reports...");
            File[] listFiles = zz.this.t().listFiles(zz.t);
            if (listFiles == null) {
                listFiles = new File[0];
            }
            for (File file : listFiles) {
                file.delete();
            }
            zz.this.n.l();
            zz.this.r.e(null);
            return nw.d(null);
        }
        az.f().b("Sending cached crash reports...");
        zz.this.b.b(this.b.booleanValue());
        Executor c2 = zz.this.e.c();
        return this.c.a.o(c2, new c00(this, c2));
    }
}
