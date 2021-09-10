package defpackage;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
/* renamed from: g00  reason: default package */
public class g00 implements Callable<Void> {
    final /* synthetic */ zz b;

    g00(zz zzVar) {
        this.b = zzVar;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public Void call() {
        zz.g(this.b);
        return null;
    }
}
