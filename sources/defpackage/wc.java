package defpackage;

import defpackage.vc;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* renamed from: wc  reason: default package */
public class wc {
    private static final vc.a<?> b = new a();
    private final Map<Class<?>, vc.a<?>> a = new HashMap();

    /* renamed from: wc$a */
    class a implements vc.a<Object> {
        a() {
        }

        @Override // defpackage.vc.a
        public Class<Object> a() {
            throw new UnsupportedOperationException("Not implemented");
        }

        @Override // defpackage.vc.a
        public vc<Object> b(Object obj) {
            return new b(obj);
        }
    }

    /* renamed from: wc$b */
    private static final class b implements vc<Object> {
        private final Object a;

        b(Object obj) {
            this.a = obj;
        }

        @Override // defpackage.vc
        public Object a() {
            return this.a;
        }

        @Override // defpackage.vc
        public void b() {
        }
    }

    public synchronized <T> vc<T> a(T t) {
        vc.a<?> aVar;
        Objects.requireNonNull(t, "Argument must not be null");
        aVar = this.a.get(t.getClass());
        if (aVar == null) {
            Iterator<vc.a<?>> it = this.a.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                vc.a<?> next = it.next();
                if (next.a().isAssignableFrom(t.getClass())) {
                    aVar = next;
                    break;
                }
            }
        }
        if (aVar == null) {
            aVar = b;
        }
        return (vc<T>) aVar.b(t);
    }

    public synchronized void b(vc.a<?> aVar) {
        this.a.put(aVar.a(), aVar);
    }
}
