package defpackage;

import java.lang.reflect.Field;
import java.util.Map;

/* renamed from: n80  reason: default package */
public final class n80 implements a70 {
    private final j70 b;
    private final d60 c;
    private final r70 d;
    private final h80 e;
    private final x80 f = x80.a();

    /* renamed from: n80$a */
    public static final class a<T> extends z60<T> {
        private final w70<T> a;
        private final Map<String, b> b;

        a(w70<T> w70, Map<String, b> map) {
            this.a = w70;
            this.b = map;
        }

        @Override // defpackage.z60
        public T b(a90 a90) {
            if (a90.x0() == b90.NULL) {
                a90.t0();
                return null;
            }
            T a2 = this.a.a();
            try {
                a90.o();
                while (a90.j0()) {
                    b bVar = this.b.get(a90.r0());
                    if (bVar != null) {
                        if (bVar.c) {
                            bVar.a(a90, a2);
                        }
                    }
                    a90.D0();
                }
                a90.b0();
                return a2;
            } catch (IllegalStateException e) {
                throw new x60(e);
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // defpackage.z60
        public void c(c90 c90, T t) {
            if (t == null) {
                c90.n0();
                return;
            }
            c90.L();
            try {
                for (b bVar : this.b.values()) {
                    if (bVar.c(t)) {
                        c90.l0(bVar.a);
                        bVar.b(c90, t);
                    }
                }
                c90.b0();
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }
    }

    /* renamed from: n80$b */
    static abstract class b {
        final String a;
        final boolean b;
        final boolean c;

        protected b(String str, boolean z, boolean z2) {
            this.a = str;
            this.b = z;
            this.c = z2;
        }

        /* access modifiers changed from: package-private */
        public abstract void a(a90 a90, Object obj);

        /* access modifiers changed from: package-private */
        public abstract void b(c90 c90, Object obj);

        /* access modifiers changed from: package-private */
        public abstract boolean c(Object obj);
    }

    public n80(j70 j70, d60 d60, r70 r70, h80 h80) {
        this.b = j70;
        this.c = d60;
        this.d = r70;
        this.e = h80;
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x00cd  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x01a1 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x0189 A[SYNTHETIC] */
    @Override // defpackage.a70
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <T> defpackage.z60<T> a(defpackage.j60 r36, defpackage.z80<T> r37) {
        /*
        // Method dump skipped, instructions count: 492
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n80.a(j60, z80):z60");
    }

    public boolean b(Field field, boolean z) {
        r70 r70 = this.d;
        return !r70.b(field.getType(), z) && !r70.d(field, z);
    }
}
