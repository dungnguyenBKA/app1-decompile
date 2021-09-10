package defpackage;

import android.content.Context;
import com.google.android.datatransport.runtime.backends.j;
import com.google.android.datatransport.runtime.backends.l;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.g;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.m;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.n;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.q;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.r;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.s;
import defpackage.ft;
import defpackage.nt;
import java.util.Objects;
import java.util.concurrent.Executor;
import javax.inject.Provider;

/* access modifiers changed from: package-private */
/* renamed from: bt  reason: default package */
public final class bt extends nt {
    private Provider<Executor> b = pt.a(ft.a.a);
    private Provider<Context> c;
    private Provider d;
    private Provider e;
    private Provider f;
    private Provider<cv> g;
    private Provider<g> h;
    private Provider<s> i;
    private Provider<xt> j;
    private Provider<m> k;
    private Provider<q> l;
    private Provider<mt> m;

    /* access modifiers changed from: private */
    /* renamed from: bt$b */
    public static final class b implements nt.a {
        private Context a;

        private b() {
        }

        public nt a() {
            Context context = this.a;
            if (context != null) {
                return new bt(context, null);
            }
            throw new IllegalStateException(Context.class.getCanonicalName() + " must be set");
        }

        public nt.a b(Context context) {
            Objects.requireNonNull(context);
            this.a = context;
            return this;
        }

        b(a aVar) {
        }
    }

    bt(Context context, a aVar) {
        qt a2 = rt.a(context);
        this.c = a2;
        j jVar = new j(a2, nv.a(), ov.a());
        this.d = jVar;
        this.e = pt.a(new l(this.c, jVar));
        this.f = new jv(this.c, gu.a(), hu.a());
        this.g = pt.a(new dv(nv.a(), ov.a(), iu.a(), this.f));
        au auVar = new au(nv.a());
        this.h = auVar;
        bu buVar = new bu(this.c, this.g, auVar, ov.a());
        this.i = buVar;
        Provider<Executor> provider = this.b;
        Provider provider2 = this.e;
        Provider<cv> provider3 = this.g;
        this.j = new yt(provider, provider2, buVar, provider3, provider3);
        this.k = new n(this.c, provider2, provider3, buVar, provider, provider3, nv.a());
        Provider<Executor> provider4 = this.b;
        Provider<cv> provider5 = this.g;
        this.l = new r(provider4, provider5, this.i, provider5);
        this.m = pt.a(new ot(nv.a(), ov.a(), this.j, this.k, this.l));
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.nt
    public eu j() {
        return this.g.get();
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.nt
    public mt o() {
        return this.m.get();
    }
}
