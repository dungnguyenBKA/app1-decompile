package defpackage;

import com.bumptech.glide.g;
import com.bumptech.glide.load.i;
import defpackage.zf;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* renamed from: dg  reason: default package */
public class dg {
    private static final c e = new c();
    private static final zf<Object, Object> f = new a();
    private final List<b<?, ?>> a = new ArrayList();
    private final c b;
    private final Set<b<?, ?>> c = new HashSet();
    private final k2<List<Throwable>> d;

    /* renamed from: dg$a */
    private static class a implements zf<Object, Object> {
        a() {
        }

        @Override // defpackage.zf
        public boolean a(Object obj) {
            return false;
        }

        @Override // defpackage.zf
        public zf.a<Object> b(Object obj, int i, int i2, i iVar) {
            return null;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: dg$b */
    public static class b<Model, Data> {
        private final Class<Model> a;
        final Class<Data> b;
        final ag<? extends Model, ? extends Data> c;

        public b(Class<Model> cls, Class<Data> cls2, ag<? extends Model, ? extends Data> agVar) {
            this.a = cls;
            this.b = cls2;
            this.c = agVar;
        }

        public boolean a(Class<?> cls) {
            return this.a.isAssignableFrom(cls);
        }

        public boolean b(Class<?> cls, Class<?> cls2) {
            return this.a.isAssignableFrom(cls) && this.b.isAssignableFrom(cls2);
        }
    }

    /* renamed from: dg$c */
    static class c {
        c() {
        }
    }

    public dg(k2<List<Throwable>> k2Var) {
        c cVar = e;
        this.d = k2Var;
        this.b = cVar;
    }

    /* JADX DEBUG: Type inference failed for r2v2. Raw type applied. Possible types: zf<? extends Model, ? extends Data>, java.lang.Object, zf<Model, Data> */
    private <Model, Data> zf<Model, Data> b(b<?, ?> bVar) {
        zf zfVar = (zf<? extends Model, ? extends Data>) bVar.c.c(this);
        Objects.requireNonNull(zfVar, "Argument must not be null");
        return zfVar;
    }

    /* access modifiers changed from: package-private */
    public synchronized <Model, Data> void a(Class<Model> cls, Class<Data> cls2, ag<? extends Model, ? extends Data> agVar) {
        b<?, ?> bVar = new b<>(cls, cls2, agVar);
        List<b<?, ?>> list = this.a;
        list.add(list.size(), bVar);
    }

    public synchronized <Model, Data> zf<Model, Data> c(Class<Model> cls, Class<Data> cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (b<?, ?> bVar : this.a) {
                if (this.c.contains(bVar)) {
                    z = true;
                } else if (bVar.b(cls, cls2)) {
                    this.c.add(bVar);
                    arrayList.add(b(bVar));
                    this.c.remove(bVar);
                }
            }
            if (arrayList.size() > 1) {
                c cVar = this.b;
                k2<List<Throwable>> k2Var = this.d;
                Objects.requireNonNull(cVar);
                return new cg(arrayList, k2Var);
            } else if (arrayList.size() == 1) {
                return (zf) arrayList.get(0);
            } else if (z) {
                return (zf<Model, Data>) f;
            } else {
                throw new g.c((Class<?>) cls, (Class<?>) cls2);
            }
        } catch (Throwable th) {
            this.c.clear();
            throw th;
        }
    }

    /* access modifiers changed from: package-private */
    public synchronized <Model> List<zf<Model, ?>> d(Class<Model> cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (b<?, ?> bVar : this.a) {
                if (!this.c.contains(bVar)) {
                    if (bVar.a(cls)) {
                        this.c.add(bVar);
                        zf<? extends Model, ? extends Data> c2 = bVar.c.c(this);
                        Objects.requireNonNull(c2, "Argument must not be null");
                        arrayList.add(c2);
                        this.c.remove(bVar);
                    }
                }
            }
        } catch (Throwable th) {
            this.c.clear();
            throw th;
        }
        return arrayList;
    }

    /* access modifiers changed from: package-private */
    public synchronized List<Class<?>> e(Class<?> cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (b<?, ?> bVar : this.a) {
            if (!arrayList.contains(bVar.b) && bVar.a(cls)) {
                arrayList.add(bVar.b);
            }
        }
        return arrayList;
    }

    /* access modifiers changed from: package-private */
    public synchronized <Model, Data> List<ag<? extends Model, ? extends Data>> f(Class<Model> cls, Class<Data> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<b<?, ?>> it = this.a.iterator();
        while (it.hasNext()) {
            b<?, ?> next = it.next();
            if (next.b(cls, cls2)) {
                it.remove();
                arrayList.add(next.c);
            }
        }
        return arrayList;
    }
}
