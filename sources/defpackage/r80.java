package defpackage;

import defpackage.n80;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* renamed from: r80  reason: default package */
final class r80<T> extends z60<T> {
    private final j60 a;
    private final z60<T> b;
    private final Type c;

    r80(j60 j60, z60<T> z60, Type type) {
        this.a = j60;
        this.b = z60;
        this.c = type;
    }

    @Override // defpackage.z60
    public T b(a90 a90) {
        return this.b.b(a90);
    }

    @Override // defpackage.z60
    public void c(c90 c90, T t) {
        z60<T> z60 = this.b;
        Type type = this.c;
        if (t != null && (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class))) {
            type = t.getClass();
        }
        if (type != this.c) {
            z60 = this.a.e(z80.get(type));
            if (z60 instanceof n80.a) {
                z60<T> z602 = this.b;
                if (!(z602 instanceof n80.a)) {
                    z60 = z602;
                }
            }
        }
        z60.c(c90, t);
    }
}
