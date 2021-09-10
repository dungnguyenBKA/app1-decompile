package defpackage;

import android.os.Build;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.g;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.l;
import com.bumptech.glide.load.m;
import defpackage.il;
import defpackage.rd;
import defpackage.ud;
import defpackage.wd;
import defpackage.zf;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* access modifiers changed from: package-private */
/* renamed from: td  reason: default package */
public class td<R> implements rd.a, Runnable, Comparable<td<?>>, il.d {
    private Object A;
    private com.bumptech.glide.load.a B;
    private uc<?> C;
    private volatile rd D;
    private volatile boolean E;
    private volatile boolean F;
    private final sd<R> b = new sd<>();
    private final List<Throwable> c = new ArrayList();
    private final ll d = ll.a();
    private final d e;
    private final k2<td<?>> f;
    private final c<?> g = new c<>();
    private final e h = new e();
    private com.bumptech.glide.e i;
    private com.bumptech.glide.load.g j;
    private com.bumptech.glide.f k;
    private zd l;
    private int m;
    private int n;
    private vd o;
    private i p;
    private a<R> q;
    private int r;
    private g s;
    private f t;
    private long u;
    private boolean v;
    private Object w;
    private Thread x;
    private com.bumptech.glide.load.g y;
    private com.bumptech.glide.load.g z;

    /* access modifiers changed from: package-private */
    /* renamed from: td$a */
    public interface a<R> {
    }

    /* access modifiers changed from: private */
    /* renamed from: td$b */
    public final class b<Z> implements ud.a<Z> {
        private final com.bumptech.glide.load.a a;

        b(com.bumptech.glide.load.a aVar) {
            this.a = aVar;
        }

        public he<Z> a(he<Z> heVar) {
            return td.this.n(this.a, heVar);
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: td$c */
    public static class c<Z> {
        private com.bumptech.glide.load.g a;
        private l<Z> b;
        private ge<Z> c;

        c() {
        }

        /* access modifiers changed from: package-private */
        public void a() {
            this.a = null;
            this.b = null;
            this.c = null;
        }

        /* access modifiers changed from: package-private */
        public void b(d dVar, i iVar) {
            try {
                ((wd.c) dVar).a().a(this.a, new qd(this.b, this.c, iVar));
            } finally {
                this.c.f();
            }
        }

        /* access modifiers changed from: package-private */
        public boolean c() {
            return this.c != null;
        }

        /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: com.bumptech.glide.load.l<X> */
        /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: ge<X> */
        /* JADX WARN: Multi-variable type inference failed */
        /* access modifiers changed from: package-private */
        public <X> void d(com.bumptech.glide.load.g gVar, l<X> lVar, ge<X> geVar) {
            this.a = gVar;
            this.b = lVar;
            this.c = geVar;
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: td$d */
    public interface d {
    }

    /* access modifiers changed from: private */
    /* renamed from: td$e */
    public static class e {
        private boolean a;
        private boolean b;
        private boolean c;

        e() {
        }

        private boolean a(boolean z) {
            return (this.c || z || this.b) && this.a;
        }

        /* access modifiers changed from: package-private */
        public synchronized boolean b() {
            this.b = true;
            return a(false);
        }

        /* access modifiers changed from: package-private */
        public synchronized boolean c() {
            this.c = true;
            return a(false);
        }

        /* access modifiers changed from: package-private */
        public synchronized boolean d(boolean z) {
            this.a = true;
            return a(z);
        }

        /* access modifiers changed from: package-private */
        public synchronized void e() {
            this.b = false;
            this.a = false;
            this.c = false;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: td$f */
    public enum f {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    /* access modifiers changed from: private */
    /* renamed from: td$g */
    public enum g {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    td(d dVar, k2<td<?>> k2Var) {
        this.e = dVar;
        this.f = k2Var;
    }

    private <Data> he<R> f(uc<?> ucVar, Data data, com.bumptech.glide.load.a aVar) {
        if (data == null) {
            ucVar.b();
            return null;
        }
        try {
            int i2 = dl.b;
            long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            he<R> g2 = g(data, aVar);
            if (Log.isLoggable("DecodeJob", 2)) {
                l("Decoded result " + g2, elapsedRealtimeNanos, null);
            }
            return g2;
        } finally {
            ucVar.b();
        }
    }

    private <Data> he<R> g(Data data, com.bumptech.glide.load.a aVar) {
        fe<Data, ?, R> h2 = this.b.h(data.getClass());
        i iVar = this.p;
        if (Build.VERSION.SDK_INT >= 26) {
            boolean z2 = aVar == com.bumptech.glide.load.a.RESOURCE_DISK_CACHE || this.b.w();
            h<Boolean> hVar = fh.i;
            Boolean bool = (Boolean) iVar.c(hVar);
            if (bool == null || (bool.booleanValue() && !z2)) {
                iVar = new i();
                iVar.d(this.p);
                iVar.e(hVar, Boolean.valueOf(z2));
            }
        }
        vc<Data> k2 = this.i.h().k(data);
        try {
            return h2.a(k2, iVar, this.m, this.n, new b(aVar));
        } finally {
            k2.b();
        }
    }

    private void h() {
        ge geVar;
        if (Log.isLoggable("DecodeJob", 2)) {
            long j2 = this.u;
            StringBuilder q2 = ic.q("data: ");
            q2.append(this.A);
            q2.append(", cache key: ");
            q2.append(this.y);
            q2.append(", fetcher: ");
            q2.append(this.C);
            l("Retrieved data", j2, q2.toString());
        }
        ge geVar2 = null;
        try {
            geVar = f(this.C, this.A, this.B);
        } catch (ce e2) {
            e2.g(this.z, this.B);
            this.c.add(e2);
            geVar = geVar2;
        }
        if (geVar != null) {
            com.bumptech.glide.load.a aVar = this.B;
            if (geVar instanceof de) {
                ((de) geVar).initialize();
            }
            if (this.g.c()) {
                geVar2 = ge.e(geVar);
                geVar = geVar2;
            }
            s();
            ((xd) this.q).h(geVar, aVar);
            this.s = g.ENCODE;
            try {
                if (this.g.c()) {
                    this.g.b(this.e, this.p);
                }
                if (this.h.b()) {
                    p();
                }
            } finally {
                if (geVar2 != null) {
                    geVar2.f();
                }
            }
        } else {
            q();
        }
    }

    private rd i() {
        int ordinal = this.s.ordinal();
        if (ordinal == 1) {
            return new ie(this.b, this);
        }
        if (ordinal == 2) {
            return new od(this.b, this);
        }
        if (ordinal == 3) {
            return new me(this.b, this);
        }
        if (ordinal == 5) {
            return null;
        }
        StringBuilder q2 = ic.q("Unrecognized stage: ");
        q2.append(this.s);
        throw new IllegalStateException(q2.toString());
    }

    private g j(g gVar) {
        g gVar2 = g.RESOURCE_CACHE;
        g gVar3 = g.DATA_CACHE;
        g gVar4 = g.FINISHED;
        int ordinal = gVar.ordinal();
        if (ordinal == 0) {
            return this.o.b() ? gVar2 : j(gVar2);
        }
        if (ordinal == 1) {
            return this.o.a() ? gVar3 : j(gVar3);
        }
        if (ordinal == 2) {
            return this.v ? gVar4 : g.SOURCE;
        }
        if (ordinal == 3 || ordinal == 5) {
            return gVar4;
        }
        throw new IllegalArgumentException("Unrecognized stage: " + gVar);
    }

    private void l(String str, long j2, String str2) {
        StringBuilder r2 = ic.r(str, " in ");
        r2.append(dl.a(j2));
        r2.append(", load key: ");
        r2.append(this.l);
        r2.append(str2 != null ? ic.i(", ", str2) : "");
        r2.append(", thread: ");
        r2.append(Thread.currentThread().getName());
        r2.toString();
    }

    private void m() {
        s();
        ((xd) this.q).g(new ce("Failed to load resource", new ArrayList(this.c)));
        if (this.h.c()) {
            p();
        }
    }

    private void p() {
        this.h.e();
        this.g.a();
        this.b.a();
        this.E = false;
        this.i = null;
        this.j = null;
        this.p = null;
        this.k = null;
        this.l = null;
        this.q = null;
        this.s = null;
        this.D = null;
        this.x = null;
        this.y = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.u = 0;
        this.F = false;
        this.w = null;
        this.c.clear();
        this.f.a(this);
    }

    private void q() {
        this.x = Thread.currentThread();
        int i2 = dl.b;
        this.u = SystemClock.elapsedRealtimeNanos();
        boolean z2 = false;
        while (!this.F && this.D != null && !(z2 = this.D.b())) {
            this.s = j(this.s);
            this.D = i();
            if (this.s == g.SOURCE) {
                this.t = f.SWITCH_TO_SOURCE_SERVICE;
                ((xd) this.q).l(this);
                return;
            }
        }
        if ((this.s == g.FINISHED || this.F) && !z2) {
            m();
        }
    }

    private void r() {
        int ordinal = this.t.ordinal();
        if (ordinal == 0) {
            this.s = j(g.INITIALIZE);
            this.D = i();
            q();
        } else if (ordinal == 1) {
            q();
        } else if (ordinal == 2) {
            h();
        } else {
            StringBuilder q2 = ic.q("Unrecognized run reason: ");
            q2.append(this.t);
            throw new IllegalStateException(q2.toString());
        }
    }

    private void s() {
        Throwable th;
        this.d.c();
        if (this.E) {
            if (this.c.isEmpty()) {
                th = null;
            } else {
                List<Throwable> list = this.c;
                th = list.get(list.size() - 1);
            }
            throw new IllegalStateException("Already notified", th);
        }
        this.E = true;
    }

    @Override // defpackage.rd.a
    public void a(com.bumptech.glide.load.g gVar, Exception exc, uc<?> ucVar, com.bumptech.glide.load.a aVar) {
        ucVar.b();
        ce ceVar = new ce("Fetching data failed", exc);
        ceVar.h(gVar, aVar, ucVar.a());
        this.c.add(ceVar);
        if (Thread.currentThread() != this.x) {
            this.t = f.SWITCH_TO_SOURCE_SERVICE;
            ((xd) this.q).l(this);
            return;
        }
        q();
    }

    @Override // defpackage.il.d
    public ll b() {
        return this.d;
    }

    @Override // defpackage.rd.a
    public void c() {
        this.t = f.SWITCH_TO_SOURCE_SERVICE;
        ((xd) this.q).l(this);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.lang.Comparable
    public int compareTo(td<?> tdVar) {
        td<?> tdVar2 = tdVar;
        int ordinal = this.k.ordinal() - tdVar2.k.ordinal();
        return ordinal == 0 ? this.r - tdVar2.r : ordinal;
    }

    @Override // defpackage.rd.a
    public void d(com.bumptech.glide.load.g gVar, Object obj, uc<?> ucVar, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.g gVar2) {
        this.y = gVar;
        this.A = obj;
        this.C = ucVar;
        this.B = aVar;
        this.z = gVar2;
        if (Thread.currentThread() != this.x) {
            this.t = f.DECODE_DATA;
            ((xd) this.q).l(this);
            return;
        }
        h();
    }

    public void e() {
        this.F = true;
        rd rdVar = this.D;
        if (rdVar != null) {
            rdVar.cancel();
        }
    }

    /* access modifiers changed from: package-private */
    public td<R> k(com.bumptech.glide.e eVar, Object obj, zd zdVar, com.bumptech.glide.load.g gVar, int i2, int i3, Class<?> cls, Class<R> cls2, com.bumptech.glide.f fVar, vd vdVar, Map<Class<?>, m<?>> map, boolean z2, boolean z3, boolean z4, i iVar, a<R> aVar, int i4) {
        this.b.u(eVar, obj, gVar, i2, i3, vdVar, cls, cls2, fVar, iVar, map, z2, z3, this.e);
        this.i = eVar;
        this.j = gVar;
        this.k = fVar;
        this.l = zdVar;
        this.m = i2;
        this.n = i3;
        this.o = vdVar;
        this.v = z4;
        this.p = iVar;
        this.q = aVar;
        this.r = i4;
        this.t = f.INITIALIZE;
        this.w = obj;
        return this;
    }

    /* access modifiers changed from: package-private */
    public <Z> he<Z> n(com.bumptech.glide.load.a aVar, he<Z> heVar) {
        m<Z> mVar;
        he<Z> heVar2;
        com.bumptech.glide.load.c cVar;
        com.bumptech.glide.load.g gVar;
        Class<?> cls = heVar.get().getClass();
        l lVar = null;
        if (aVar != com.bumptech.glide.load.a.RESOURCE_DISK_CACHE) {
            m<Z> r2 = this.b.r(cls);
            mVar = r2;
            heVar2 = r2.b(this.i, heVar, this.m, this.n);
        } else {
            heVar2 = heVar;
            mVar = null;
        }
        if (!heVar.equals(heVar2)) {
            heVar.a();
        }
        if (this.b.v(heVar2)) {
            lVar = this.b.n(heVar2);
            cVar = lVar.b(this.p);
        } else {
            cVar = com.bumptech.glide.load.c.NONE;
        }
        sd<R> sdVar = this.b;
        com.bumptech.glide.load.g gVar2 = this.y;
        List<zf.a<?>> g2 = sdVar.g();
        int size = g2.size();
        boolean z2 = false;
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            } else if (g2.get(i2).a.equals(gVar2)) {
                z2 = true;
                break;
            } else {
                i2++;
            }
        }
        if (!this.o.d(!z2, aVar, cVar)) {
            return heVar2;
        }
        if (lVar != null) {
            int ordinal = cVar.ordinal();
            if (ordinal == 0) {
                gVar = new pd(this.y, this.j);
            } else if (ordinal == 1) {
                gVar = new je(this.b.b(), this.y, this.j, this.m, this.n, mVar, cls, this.p);
            } else {
                throw new IllegalArgumentException("Unknown strategy: " + cVar);
            }
            ge e2 = ge.e(heVar2);
            this.g.d(gVar, lVar, e2);
            return e2;
        }
        throw new g.d(heVar2.get().getClass());
    }

    /* access modifiers changed from: package-private */
    public void o(boolean z2) {
        if (this.h.d(z2)) {
            p();
        }
    }

    public void run() {
        uc<?> ucVar = this.C;
        try {
            if (this.F) {
                m();
                if (ucVar != null) {
                    ucVar.b();
                    return;
                }
                return;
            }
            r();
            if (ucVar != null) {
                ucVar.b();
            }
        } catch (nd e2) {
            throw e2;
        } catch (Throwable th) {
            if (ucVar != null) {
                ucVar.b();
            }
            throw th;
        }
    }

    /* access modifiers changed from: package-private */
    public boolean t() {
        g j2 = j(g.INITIALIZE);
        return j2 == g.RESOURCE_CACHE || j2 == g.DATA_CACHE;
    }
}
