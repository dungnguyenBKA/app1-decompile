package defpackage;

import java.util.ArrayList;
import java.util.Objects;

/* renamed from: l80  reason: default package */
public final class l80 extends z60<Object> {
    public static final a70 b = new a();
    private final j60 a;

    /* renamed from: l80$a */
    class a implements a70 {
        a() {
        }

        @Override // defpackage.a70
        public <T> z60<T> a(j60 j60, z80<T> z80) {
            if (z80.getRawType() == Object.class) {
                return new l80(j60);
            }
            return null;
        }
    }

    l80(j60 j60) {
        this.a = j60;
    }

    @Override // defpackage.z60
    public Object b(a90 a90) {
        int ordinal = a90.x0().ordinal();
        if (ordinal == 0) {
            ArrayList arrayList = new ArrayList();
            a90.j();
            while (a90.j0()) {
                arrayList.add(b(a90));
            }
            a90.V();
            return arrayList;
        } else if (ordinal == 2) {
            v70 v70 = new v70();
            a90.o();
            while (a90.j0()) {
                v70.put(a90.r0(), b(a90));
            }
            a90.b0();
            return v70;
        } else if (ordinal == 5) {
            return a90.v0();
        } else {
            if (ordinal == 6) {
                return Double.valueOf(a90.o0());
            }
            if (ordinal == 7) {
                return Boolean.valueOf(a90.n0());
            }
            if (ordinal == 8) {
                a90.t0();
                return null;
            }
            throw new IllegalStateException();
        }
    }

    @Override // defpackage.z60
    public void c(c90 c90, Object obj) {
        if (obj == null) {
            c90.n0();
            return;
        }
        j60 j60 = this.a;
        Class<?> cls = obj.getClass();
        Objects.requireNonNull(j60);
        z60 e = j60.e(z80.get((Class) cls));
        if (e instanceof l80) {
            c90.L();
            c90.b0();
            return;
        }
        e.c(c90, obj);
    }
}
