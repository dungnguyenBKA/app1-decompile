package defpackage;

import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.e;
import com.bumptech.glide.f;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.m;
import defpackage.Cif;
import defpackage.af;
import defpackage.be;
import defpackage.il;
import defpackage.ld;
import defpackage.td;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;

/* renamed from: wd  reason: default package */
public class wd implements yd, Cif.a, be.a {
    private static final boolean i = Log.isLoggable("Engine", 2);
    private final ee a = new ee();
    private final ae b = new ae();
    private final Cif c;
    private final b d;
    private final ke e;
    private final c f;
    private final a g;
    private final ld h;

    /* access modifiers changed from: package-private */
    /* renamed from: wd$a */
    public static class a {
        final td.d a;
        final k2<td<?>> b = il.a(150, new C0120a());
        private int c;

        /* renamed from: wd$a$a  reason: collision with other inner class name */
        class C0120a implements il.b<td<?>> {
            C0120a() {
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // defpackage.il.b
            public td<?> a() {
                a aVar = a.this;
                return new td(aVar.a, aVar.b);
            }
        }

        a(td.d dVar) {
            this.a = dVar;
        }

        /* access modifiers changed from: package-private */
        public <R> td<R> a(e eVar, Object obj, zd zdVar, g gVar, int i, int i2, Class<?> cls, Class<R> cls2, f fVar, vd vdVar, Map<Class<?>, m<?>> map, boolean z, boolean z2, boolean z3, i iVar, td.a<R> aVar) {
            td<R> tdVar = (td<R>) this.b.b();
            Objects.requireNonNull(tdVar, "Argument must not be null");
            int i3 = this.c;
            this.c = i3 + 1;
            tdVar.k(eVar, obj, zdVar, gVar, i, i2, cls, cls2, fVar, vdVar, map, z, z2, z3, iVar, aVar, i3);
            return tdVar;
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: wd$b */
    public static class b {
        final lf a;
        final lf b;
        final lf c;
        final lf d;
        final yd e;
        final be.a f;
        final k2<xd<?>> g = il.a(150, new a());

        /* renamed from: wd$b$a */
        class a implements il.b<xd<?>> {
            a() {
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // defpackage.il.b
            public xd<?> a() {
                b bVar = b.this;
                return new xd(bVar.a, bVar.b, bVar.c, bVar.d, bVar.e, bVar.f, bVar.g);
            }
        }

        b(lf lfVar, lf lfVar2, lf lfVar3, lf lfVar4, yd ydVar, be.a aVar) {
            this.a = lfVar;
            this.b = lfVar2;
            this.c = lfVar3;
            this.d = lfVar4;
            this.e = ydVar;
            this.f = aVar;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: wd$c */
    public static class c implements td.d {
        private final af.a a;
        private volatile af b;

        c(af.a aVar) {
            this.a = aVar;
        }

        public af a() {
            if (this.b == null) {
                synchronized (this) {
                    if (this.b == null) {
                        this.b = ((df) this.a).a();
                    }
                    if (this.b == null) {
                        this.b = new bf();
                    }
                }
            }
            return this.b;
        }
    }

    /* renamed from: wd$d */
    public class d {
        private final xd<?> a;
        private final dk b;

        d(dk dkVar, xd<?> xdVar) {
            this.b = dkVar;
            this.a = xdVar;
        }

        public void a() {
            synchronized (wd.this) {
                this.a.k(this.b);
            }
        }
    }

    public wd(Cif ifVar, af.a aVar, lf lfVar, lf lfVar2, lf lfVar3, lf lfVar4, boolean z) {
        this.c = ifVar;
        c cVar = new c(aVar);
        this.f = cVar;
        ld ldVar = new ld(z);
        this.h = ldVar;
        ldVar.d(this);
        this.d = new b(lfVar, lfVar2, lfVar3, lfVar4, this, this);
        this.g = new a(cVar);
        this.e = new ke();
        ((hf) ifVar).i(this);
    }

    private be<?> c(zd zdVar, boolean z, long j) {
        be<?> beVar;
        be<?> beVar2;
        if (!z) {
            return null;
        }
        ld ldVar = this.h;
        synchronized (ldVar) {
            ld.b bVar = ldVar.c.get(zdVar);
            if (bVar == null) {
                beVar = null;
            } else {
                beVar = (be) bVar.get();
                if (beVar == null) {
                    ldVar.c(bVar);
                }
            }
        }
        if (beVar != null) {
            beVar.b();
        }
        if (beVar != null) {
            if (i) {
                d("Loaded resource from active resources", j, zdVar);
            }
            return beVar;
        }
        he heVar = (he) ((hf) this.c).g(zdVar);
        if (heVar == null) {
            beVar2 = null;
        } else if (heVar instanceof be) {
            beVar2 = (be) heVar;
        } else {
            beVar2 = new be<>(heVar, true, true, zdVar, this);
        }
        if (beVar2 != null) {
            beVar2.b();
            this.h.a(zdVar, beVar2);
        }
        if (beVar2 == null) {
            return null;
        }
        if (i) {
            d("Loaded resource from cache", j, zdVar);
        }
        return beVar2;
    }

    private static void d(String str, long j, g gVar) {
        StringBuilder r = ic.r(str, " in ");
        r.append(dl.a(j));
        r.append("ms, key: ");
        r.append(gVar);
        r.toString();
    }

    private <R> d i(e eVar, Object obj, g gVar, int i2, int i3, Class<?> cls, Class<R> cls2, f fVar, vd vdVar, Map<Class<?>, m<?>> map, boolean z, boolean z2, i iVar, boolean z3, boolean z4, boolean z5, boolean z6, dk dkVar, Executor executor, zd zdVar, long j) {
        xd<?> a2 = this.a.a(zdVar, z6);
        if (a2 != null) {
            a2.a(dkVar, executor);
            if (i) {
                d("Added to existing load", j, zdVar);
            }
            return new d(dkVar, a2);
        }
        xd<?> b2 = this.d.g.b();
        Objects.requireNonNull(b2, "Argument must not be null");
        b2.e(zdVar, z3, z4, z5, z6);
        td<?> a3 = this.g.a(eVar, obj, zdVar, gVar, i2, i3, cls, cls2, fVar, vdVar, map, z, z2, z6, iVar, b2);
        this.a.c(zdVar, b2);
        b2.a(dkVar, executor);
        b2.m(a3);
        if (i) {
            d("Started new load", j, zdVar);
        }
        return new d(dkVar, b2);
    }

    @Override // defpackage.be.a
    public void a(g gVar, be<?> beVar) {
        ld ldVar = this.h;
        synchronized (ldVar) {
            ld.b remove = ldVar.c.remove(gVar);
            if (remove != null) {
                remove.c = null;
                remove.clear();
            }
        }
        if (beVar.f()) {
            he heVar = (he) ((hf) this.c).f(gVar, beVar);
        } else {
            this.e.a(beVar, false);
        }
    }

    public <R> d b(e eVar, Object obj, g gVar, int i2, int i3, Class<?> cls, Class<R> cls2, f fVar, vd vdVar, Map<Class<?>, m<?>> map, boolean z, boolean z2, i iVar, boolean z3, boolean z4, boolean z5, boolean z6, dk dkVar, Executor executor) {
        long j;
        if (i) {
            int i4 = dl.b;
            j = SystemClock.elapsedRealtimeNanos();
        } else {
            j = 0;
        }
        Objects.requireNonNull(this.b);
        zd zdVar = new zd(obj, gVar, i2, i3, map, cls, cls2, iVar);
        synchronized (this) {
            be<?> c2 = c(zdVar, z3, j);
            if (c2 == null) {
                return i(eVar, obj, gVar, i2, i3, cls, cls2, fVar, vdVar, map, z, z2, iVar, z3, z4, z5, z6, dkVar, executor, zdVar, j);
            }
            ((ek) dkVar).n(c2, com.bumptech.glide.load.a.MEMORY_CACHE);
            return null;
        }
    }

    public synchronized void e(xd<?> xdVar, g gVar) {
        this.a.d(gVar, xdVar);
    }

    public synchronized void f(xd<?> xdVar, g gVar, be<?> beVar) {
        if (beVar != null) {
            if (beVar.f()) {
                this.h.a(gVar, beVar);
            }
        }
        this.a.d(gVar, xdVar);
    }

    public void g(he<?> heVar) {
        this.e.a(heVar, true);
    }

    public void h(he<?> heVar) {
        if (heVar instanceof be) {
            ((be) heVar).g();
            return;
        }
        throw new IllegalArgumentException("Cannot release anything but an EngineResource");
    }
}
