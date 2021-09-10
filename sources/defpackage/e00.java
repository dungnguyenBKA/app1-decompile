package defpackage;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
/* renamed from: e00  reason: default package */
public class e00 implements Callable<Void> {
    final /* synthetic */ e10 b;
    final /* synthetic */ zz c;

    e00(zz zzVar, e10 e10) {
        this.c = zzVar;
        this.b = e10;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public Void call() {
        String s = this.c.s();
        if (s == null) {
            az.f().b("Tried to cache user data while no session was open.");
            return null;
        }
        this.c.n.k(s);
        new x00(this.c.t()).d(s, this.b);
        return null;
    }
}
