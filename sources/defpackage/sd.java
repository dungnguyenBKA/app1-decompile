package defpackage;

import com.bumptech.glide.e;
import com.bumptech.glide.f;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.l;
import com.bumptech.glide.load.m;
import defpackage.td;
import defpackage.wd;
import defpackage.zf;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* access modifiers changed from: package-private */
/* renamed from: sd  reason: default package */
public final class sd<Transcode> {
    private final List<zf.a<?>> a = new ArrayList();
    private final List<g> b = new ArrayList();
    private e c;
    private Object d;
    private int e;
    private int f;
    private Class<?> g;
    private td.d h;
    private i i;
    private Map<Class<?>, m<?>> j;
    private Class<Transcode> k;
    private boolean l;
    private boolean m;
    private g n;
    private f o;
    private vd p;
    private boolean q;
    private boolean r;

    sd() {
    }

    /* access modifiers changed from: package-private */
    public void a() {
        this.c = null;
        this.d = null;
        this.n = null;
        this.g = null;
        this.k = null;
        this.i = null;
        this.o = null;
        this.j = null;
        this.p = null;
        this.a.clear();
        this.l = false;
        this.b.clear();
        this.m = false;
    }

    /* access modifiers changed from: package-private */
    public oe b() {
        return this.c.b();
    }

    /* access modifiers changed from: package-private */
    public List<g> c() {
        if (!this.m) {
            this.m = true;
            this.b.clear();
            List<zf.a<?>> g2 = g();
            int size = g2.size();
            for (int i2 = 0; i2 < size; i2++) {
                zf.a<?> aVar = g2.get(i2);
                if (!this.b.contains(aVar.a)) {
                    this.b.add(aVar.a);
                }
                for (int i3 = 0; i3 < aVar.b.size(); i3++) {
                    if (!this.b.contains(aVar.b.get(i3))) {
                        this.b.add(aVar.b.get(i3));
                    }
                }
            }
        }
        return this.b;
    }

    /* access modifiers changed from: package-private */
    public af d() {
        return ((wd.c) this.h).a();
    }

    /* access modifiers changed from: package-private */
    public vd e() {
        return this.p;
    }

    /* access modifiers changed from: package-private */
    public int f() {
        return this.f;
    }

    /* access modifiers changed from: package-private */
    public List<zf.a<?>> g() {
        if (!this.l) {
            this.l = true;
            this.a.clear();
            List h2 = this.c.h().h(this.d);
            int size = h2.size();
            for (int i2 = 0; i2 < size; i2++) {
                zf.a<?> b2 = ((zf) h2.get(i2)).b(this.d, this.e, this.f, this.i);
                if (b2 != null) {
                    this.a.add(b2);
                }
            }
        }
        return this.a;
    }

    /* access modifiers changed from: package-private */
    public <Data> fe<Data, ?, Transcode> h(Class<Data> cls) {
        return this.c.h().g(cls, this.g, this.k);
    }

    /* access modifiers changed from: package-private */
    public Class<?> i() {
        return this.d.getClass();
    }

    /* access modifiers changed from: package-private */
    public List<zf<File, ?>> j(File file) {
        return this.c.h().h(file);
    }

    /* access modifiers changed from: package-private */
    public i k() {
        return this.i;
    }

    /* access modifiers changed from: package-private */
    public f l() {
        return this.o;
    }

    /* access modifiers changed from: package-private */
    public List<Class<?>> m() {
        return this.c.h().i(this.d.getClass(), this.g, this.k);
    }

    /* access modifiers changed from: package-private */
    public <Z> l<Z> n(he<Z> heVar) {
        return this.c.h().j(heVar);
    }

    /* access modifiers changed from: package-private */
    public g o() {
        return this.n;
    }

    /* access modifiers changed from: package-private */
    public <X> d<X> p(X x) {
        return this.c.h().l(x);
    }

    /* JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types: java.lang.Class<Transcode>, java.lang.Class<?> */
    /* access modifiers changed from: package-private */
    public Class<?> q() {
        return (Class<Transcode>) this.k;
    }

    /* access modifiers changed from: package-private */
    public <Z> m<Z> r(Class<Z> cls) {
        m<Z> mVar = (m<Z>) this.j.get(cls);
        if (mVar == null) {
            Iterator<Map.Entry<Class<?>, m<?>>> it = this.j.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, m<?>> next = it.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    mVar = (m<Z>) next.getValue();
                    break;
                }
            }
        }
        if (mVar != null) {
            return mVar;
        }
        if (!this.j.isEmpty() || !this.q) {
            return sg.c();
        }
        throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
    }

    /* access modifiers changed from: package-private */
    public int s() {
        return this.e;
    }

    /* access modifiers changed from: package-private */
    public boolean t(Class<?> cls) {
        return this.c.h().g(cls, this.g, this.k) != null;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r8v0, resolved type: java.lang.Class<R> */
    /* JADX WARN: Multi-variable type inference failed */
    /* access modifiers changed from: package-private */
    public <R> void u(e eVar, Object obj, g gVar, int i2, int i3, vd vdVar, Class<?> cls, Class<R> cls2, f fVar, i iVar, Map<Class<?>, m<?>> map, boolean z, boolean z2, td.d dVar) {
        this.c = eVar;
        this.d = obj;
        this.n = gVar;
        this.e = i2;
        this.f = i3;
        this.p = vdVar;
        this.g = cls;
        this.h = dVar;
        this.k = cls2;
        this.o = fVar;
        this.i = iVar;
        this.j = map;
        this.q = z;
        this.r = z2;
    }

    /* access modifiers changed from: package-private */
    public boolean v(he<?> heVar) {
        return this.c.h().m(heVar);
    }

    /* access modifiers changed from: package-private */
    public boolean w() {
        return this.r;
    }
}
