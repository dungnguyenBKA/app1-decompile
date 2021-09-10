package defpackage;

import java.util.Map;
import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
/* renamed from: f00  reason: default package */
public class f00 implements Callable<Void> {
    final /* synthetic */ Map b;
    final /* synthetic */ zz c;

    f00(zz zzVar, Map map) {
        this.c = zzVar;
        this.b = map;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public Void call() {
        new x00(this.c.t()).c(this.c.s(), this.b);
        return null;
    }
}
