package defpackage;

import android.content.Context;
import com.google.android.datatransport.cct.a;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.m;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.q;
import defpackage.bt;
import defpackage.it;
import defpackage.ys;
import java.util.Collections;
import java.util.HashMap;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
/* renamed from: mt  reason: default package */
public class mt implements lt {
    private static volatile nt e;
    private final mv a;
    private final mv b;
    private final zt c;
    private final m d;

    @Inject
    mt(mv mvVar, mv mvVar2, zt ztVar, m mVar, q qVar) {
        this.a = mvVar;
        this.b = mvVar2;
        this.c = ztVar;
        this.d = mVar;
        qVar.a();
    }

    public static mt a() {
        nt ntVar = e;
        if (ntVar != null) {
            return ntVar.o();
        }
        throw new IllegalStateException("Not initialized!");
    }

    public static void c(Context context) {
        if (e == null) {
            synchronized (mt.class) {
                if (e == null) {
                    bt.b bVar = new bt.b(null);
                    bVar.b(context);
                    e = bVar.a();
                }
            }
        }
    }

    public m b() {
        return this.d;
    }

    public bs d(ct ctVar) {
        Set unmodifiableSet = Collections.unmodifiableSet(((a) ctVar).e());
        it.a a2 = it.a();
        a2.b("cct");
        a2.c(((a) ctVar).d());
        return new jt(unmodifiableSet, a2.a(), this);
    }

    public void e(ht htVar, cs csVar) {
        zt ztVar = this.c;
        it d2 = htVar.d();
        yr c2 = htVar.b().c();
        Objects.requireNonNull(d2);
        it.a a2 = it.a();
        a2.b(d2.b());
        a2.d(c2);
        a2.c(d2.c());
        it a3 = a2.a();
        ys.b bVar = new ys.b();
        bVar.k(new HashMap());
        bVar.h(this.a.a());
        bVar.j(this.b.a());
        bVar.i(htVar.e());
        bVar.g(new dt(htVar.a(), htVar.c().apply(htVar.b().b())));
        bVar.f(htVar.b().a());
        ztVar.a(a3, bVar.d(), csVar);
    }
}
