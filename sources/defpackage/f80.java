package defpackage;

import java.lang.reflect.Type;
import java.util.Collection;

/* renamed from: f80  reason: default package */
public final class f80 implements a70 {
    private final j70 b;

    /* renamed from: f80$a */
    private static final class a<E> extends z60<Collection<E>> {
        private final z60<E> a;
        private final w70<? extends Collection<E>> b;

        public a(j60 j60, Type type, z60<E> z60, w70<? extends Collection<E>> w70) {
            this.a = new r80(j60, z60, type);
            this.b = w70;
        }

        @Override // defpackage.z60
        public Object b(a90 a90) {
            if (a90.x0() == b90.NULL) {
                a90.t0();
                return null;
            }
            Collection collection = (Collection) this.b.a();
            a90.j();
            while (a90.j0()) {
                collection.add(this.a.b(a90));
            }
            a90.V();
            return collection;
        }

        @Override // defpackage.z60
        public void c(c90 c90, Object obj) {
            Collection<E> collection = (Collection) obj;
            if (collection == null) {
                c90.n0();
                return;
            }
            c90.o();
            for (E e : collection) {
                this.a.c(c90, e);
            }
            c90.V();
        }
    }

    public f80(j70 j70) {
        this.b = j70;
    }

    @Override // defpackage.a70
    public <T> z60<T> a(j60 j60, z80<T> z80) {
        Type type = z80.getType();
        Class<? super T> rawType = z80.getRawType();
        if (!Collection.class.isAssignableFrom(rawType)) {
            return null;
        }
        Type e = d70.e(type, rawType);
        return new a(j60, e, j60.e(z80.get(e)), this.b.a(z80));
    }
}
