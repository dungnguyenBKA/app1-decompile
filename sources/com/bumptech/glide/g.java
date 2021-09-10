package com.bumptech.glide;

import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.k;
import com.bumptech.glide.load.l;
import defpackage.vc;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class g {
    private final bg a;
    private final sj b;
    private final wj c;
    private final xj d;
    private final wc e;
    private final wi f;
    private final tj g;
    private final vj h = new vj();
    private final uj i = new uj();
    private final k2<List<Throwable>> j;

    public static class a extends RuntimeException {
        public a(String str) {
            super(str);
        }
    }

    public static final class b extends a {
        public b() {
            super("Failed to find image header parser.");
        }
    }

    public static class c extends a {
        /* JADX WARNING: Illegal instructions before constructor call */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public c(java.lang.Object r2) {
            /*
                r1 = this;
                java.lang.String r0 = "Failed to find any ModelLoaders registered for model class: "
                java.lang.StringBuilder r0 = defpackage.ic.q(r0)
                java.lang.Class r2 = r2.getClass()
                r0.append(r2)
                java.lang.String r2 = r0.toString()
                r1.<init>(r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.g.c.<init>(java.lang.Object):void");
        }

        public <M> c(M m, List<zf<M, ?>> list) {
            super("Found ModelLoaders for model class: " + list + ", but none that handle this specific model instance: " + ((Object) m));
        }

        public c(Class<?> cls, Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }
    }

    public static class d extends a {
        public d(Class<?> cls) {
            super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    public static class e extends a {
        public e(Class<?> cls) {
            super("Failed to find source encoder for data class: " + cls);
        }
    }

    public g() {
        k2<List<Throwable>> b2 = il.b();
        this.j = b2;
        this.a = new bg(b2);
        this.b = new sj();
        wj wjVar = new wj();
        this.c = wjVar;
        this.d = new xj();
        this.e = new wc();
        this.f = new wi();
        this.g = new tj();
        List asList = Arrays.asList("Gif", "Bitmap", "BitmapDrawable");
        ArrayList arrayList = new ArrayList(asList.size());
        arrayList.addAll(asList);
        arrayList.add(0, "legacy_prepend_all");
        arrayList.add("legacy_append");
        wjVar.e(arrayList);
    }

    public <Data> g a(Class<Data> cls, com.bumptech.glide.load.d<Data> dVar) {
        this.b.a(cls, dVar);
        return this;
    }

    public <TResource> g b(Class<TResource> cls, l<TResource> lVar) {
        this.d.a(cls, lVar);
        return this;
    }

    public <Data, TResource> g c(Class<Data> cls, Class<TResource> cls2, k<Data, TResource> kVar) {
        this.c.a("legacy_append", kVar, cls, cls2);
        return this;
    }

    public <Model, Data> g d(Class<Model> cls, Class<Data> cls2, ag<Model, Data> agVar) {
        this.a.a(cls, cls2, agVar);
        return this;
    }

    public <Data, TResource> g e(String str, Class<Data> cls, Class<TResource> cls2, k<Data, TResource> kVar) {
        this.c.a(str, kVar, cls, cls2);
        return this;
    }

    public List<ImageHeaderParser> f() {
        List<ImageHeaderParser> b2 = this.g.b();
        if (!b2.isEmpty()) {
            return b2;
        }
        throw new b();
    }

    public <Data, TResource, Transcode> fe<Data, TResource, Transcode> g(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        fe<Data, TResource, Transcode> a2 = this.i.a(cls, cls2, cls3);
        if (this.i.b(a2)) {
            return null;
        }
        if (a2 == null) {
            ArrayList arrayList = new ArrayList();
            Iterator it = ((ArrayList) this.c.d(cls, cls2)).iterator();
            while (it.hasNext()) {
                Class cls4 = (Class) it.next();
                Iterator it2 = ((ArrayList) this.f.b(cls4, cls3)).iterator();
                while (it2.hasNext()) {
                    Class cls5 = (Class) it2.next();
                    arrayList.add(new ud(cls, cls4, cls5, this.c.b(cls, cls4), this.f.a(cls4, cls5), this.j));
                }
            }
            if (arrayList.isEmpty()) {
                a2 = null;
            } else {
                a2 = new fe<>(cls, cls2, cls3, arrayList, this.j);
            }
            this.i.c(cls, cls2, cls3, a2);
        }
        return a2;
    }

    public <Model> List<zf<Model, ?>> h(Model model) {
        return this.a.c(model);
    }

    public <Model, TResource, Transcode> List<Class<?>> i(Class<Model> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        List<Class<?>> a2 = this.h.a(cls, cls2, cls3);
        ArrayList arrayList = a2;
        if (a2 == null) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = ((ArrayList) this.a.b(cls)).iterator();
            while (it.hasNext()) {
                Iterator it2 = ((ArrayList) this.c.d((Class) it.next(), cls2)).iterator();
                while (it2.hasNext()) {
                    Class cls4 = (Class) it2.next();
                    if (!((ArrayList) this.f.b(cls4, cls3)).isEmpty() && !arrayList2.contains(cls4)) {
                        arrayList2.add(cls4);
                    }
                }
            }
            this.h.b(cls, cls2, cls3, Collections.unmodifiableList(arrayList2));
            arrayList = arrayList2;
        }
        return arrayList;
    }

    public <X> l<X> j(he<X> heVar) {
        l<X> b2 = this.d.b(heVar.d());
        if (b2 != null) {
            return b2;
        }
        throw new d(heVar.d());
    }

    public <X> vc<X> k(X x) {
        return this.e.a(x);
    }

    public <X> com.bumptech.glide.load.d<X> l(X x) {
        com.bumptech.glide.load.d<X> b2 = this.b.b(x.getClass());
        if (b2 != null) {
            return b2;
        }
        throw new e(x.getClass());
    }

    public boolean m(he<?> heVar) {
        return this.d.b(heVar.d()) != null;
    }

    public g n(ImageHeaderParser imageHeaderParser) {
        this.g.a(imageHeaderParser);
        return this;
    }

    public g o(vc.a<?> aVar) {
        this.e.b(aVar);
        return this;
    }

    public <TResource, Transcode> g p(Class<TResource> cls, Class<Transcode> cls2, vi<TResource, Transcode> viVar) {
        this.f.c(cls, cls2, viVar);
        return this;
    }

    public <Model, Data> g q(Class<Model> cls, Class<Data> cls2, ag<? extends Model, ? extends Data> agVar) {
        this.a.d(cls, cls2, agVar);
        return this;
    }
}
