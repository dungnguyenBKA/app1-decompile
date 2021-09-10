package defpackage;

import java.util.ArrayList;
import java.util.List;

/* renamed from: wi  reason: default package */
public class wi {
    private final List<a<?, ?>> a = new ArrayList();

    /* access modifiers changed from: private */
    /* renamed from: wi$a */
    public static final class a<Z, R> {
        private final Class<Z> a;
        private final Class<R> b;
        final vi<Z, R> c;

        a(Class<Z> cls, Class<R> cls2, vi<Z, R> viVar) {
            this.a = cls;
            this.b = cls2;
            this.c = viVar;
        }

        public boolean a(Class<?> cls, Class<?> cls2) {
            return this.a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.b);
        }
    }

    public synchronized <Z, R> vi<Z, R> a(Class<Z> cls, Class<R> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return xi.b();
        }
        for (a<?, ?> aVar : this.a) {
            if (aVar.a(cls, cls2)) {
                return aVar.c;
            }
        }
        throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
    }

    public synchronized <Z, R> List<Class<R>> b(Class<Z> cls, Class<R> cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        for (a<?, ?> aVar : this.a) {
            if (aVar.a(cls, cls2)) {
                arrayList.add(cls2);
            }
        }
        return arrayList;
    }

    public synchronized <Z, R> void c(Class<Z> cls, Class<R> cls2, vi<Z, R> viVar) {
        this.a.add(new a<>(cls, cls2, viVar));
    }
}
