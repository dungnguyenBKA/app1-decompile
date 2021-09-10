package defpackage;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* renamed from: e80  reason: default package */
public final class e80<E> extends z60<Object> {
    public static final a70 c = new a();
    private final Class<E> a;
    private final z60<E> b;

    /* renamed from: e80$a */
    class a implements a70 {
        a() {
        }

        @Override // defpackage.a70
        public <T> z60<T> a(j60 j60, z80<T> z80) {
            Type type;
            Type type2 = z80.getType();
            boolean z = type2 instanceof GenericArrayType;
            if (!z && (!(type2 instanceof Class) || !((Class) type2).isArray())) {
                return null;
            }
            if (z) {
                type = ((GenericArrayType) type2).getGenericComponentType();
            } else {
                type = ((Class) type2).getComponentType();
            }
            return new e80(j60, j60.e(z80.get(type)), d70.h(type));
        }
    }

    public e80(j60 j60, z60<E> z60, Class<E> cls) {
        this.b = new r80(j60, z60, cls);
        this.a = cls;
    }

    @Override // defpackage.z60
    public Object b(a90 a90) {
        if (a90.x0() == b90.NULL) {
            a90.t0();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        a90.j();
        while (a90.j0()) {
            arrayList.add(this.b.b(a90));
        }
        a90.V();
        int size = arrayList.size();
        Object newInstance = Array.newInstance((Class<?>) this.a, size);
        for (int i = 0; i < size; i++) {
            Array.set(newInstance, i, arrayList.get(i));
        }
        return newInstance;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: z60<E> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.z60
    public void c(c90 c90, Object obj) {
        if (obj == null) {
            c90.n0();
            return;
        }
        c90.o();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.b.c(c90, Array.get(obj, i));
        }
        c90.V();
    }
}
