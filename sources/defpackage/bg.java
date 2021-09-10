package defpackage;

import com.bumptech.glide.g;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: bg  reason: default package */
public class bg {
    private final dg a;
    private final a b = new a();

    /* access modifiers changed from: private */
    /* renamed from: bg$a */
    public static class a {
        private final Map<Class<?>, C0027a<?>> a = new HashMap();

        /* access modifiers changed from: private */
        /* renamed from: bg$a$a  reason: collision with other inner class name */
        public static class C0027a<Model> {
            final List<zf<Model, ?>> a;

            public C0027a(List<zf<Model, ?>> list) {
                this.a = list;
            }
        }

        a() {
        }

        public void a() {
            this.a.clear();
        }

        public <Model> List<zf<Model, ?>> b(Class<Model> cls) {
            C0027a<?> aVar = this.a.get(cls);
            if (aVar == null) {
                return null;
            }
            return aVar.a;
        }

        public <Model> void c(Class<Model> cls, List<zf<Model, ?>> list) {
            if (this.a.put(cls, new C0027a<>(list)) != null) {
                throw new IllegalStateException("Already cached loaders for model: " + cls);
            }
        }
    }

    public bg(k2<List<Throwable>> k2Var) {
        dg dgVar = new dg(k2Var);
        this.a = dgVar;
    }

    public synchronized <Model, Data> void a(Class<Model> cls, Class<Data> cls2, ag<? extends Model, ? extends Data> agVar) {
        this.a.a(cls, cls2, agVar);
        this.b.a();
    }

    public synchronized List<Class<?>> b(Class<?> cls) {
        return this.a.e(cls);
    }

    public <A> List<zf<A, ?>> c(A a2) {
        List b2;
        Class<?> cls = a2.getClass();
        synchronized (this) {
            b2 = this.b.b(cls);
            if (b2 == null) {
                b2 = Collections.unmodifiableList(this.a.d(cls));
                this.b.c(cls, b2);
            }
        }
        if (!b2.isEmpty()) {
            int size = b2.size();
            List<zf<A, ?>> emptyList = Collections.emptyList();
            boolean z = true;
            for (int i = 0; i < size; i++) {
                zf<A, ?> zfVar = (zf) b2.get(i);
                if (zfVar.a(a2)) {
                    if (z) {
                        emptyList = new ArrayList<>(size - i);
                        z = false;
                    }
                    emptyList.add(zfVar);
                }
            }
            if (!emptyList.isEmpty()) {
                return emptyList;
            }
            throw new g.c(a2, b2);
        }
        throw new g.c(a2);
    }

    public synchronized <Model, Data> void d(Class<Model> cls, Class<Data> cls2, ag<? extends Model, ? extends Data> agVar) {
        List<ag<? extends Model, ? extends Data>> f;
        dg dgVar = this.a;
        synchronized (dgVar) {
            f = dgVar.f(cls, cls2);
            dgVar.a(cls, cls2, agVar);
        }
        Iterator it = ((ArrayList) f).iterator();
        while (it.hasNext()) {
            ((ag) it.next()).a();
        }
        this.b.a();
    }
}
