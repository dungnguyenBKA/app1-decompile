package defpackage;

import android.util.Log;
import java.util.List;

/* renamed from: il  reason: default package */
public final class il {
    private static final e<Object> a = new a();

    /* renamed from: il$a */
    class a implements e<Object> {
        a() {
        }

        @Override // defpackage.il.e
        public void a(Object obj) {
        }
    }

    /* renamed from: il$b */
    public interface b<T> {
        T a();
    }

    /* access modifiers changed from: private */
    /* renamed from: il$c */
    public static final class c<T> implements k2<T> {
        private final b<T> a;
        private final e<T> b;
        private final k2<T> c;

        c(k2<T> k2Var, b<T> bVar, e<T> eVar) {
            this.c = k2Var;
            this.a = bVar;
            this.b = eVar;
        }

        @Override // defpackage.k2
        public boolean a(T t) {
            if (t instanceof d) {
                t.b().b(true);
            }
            this.b.a(t);
            return this.c.a(t);
        }

        @Override // defpackage.k2
        public T b() {
            T b2 = this.c.b();
            if (b2 == null) {
                b2 = this.a.a();
                if (Log.isLoggable("FactoryPools", 2)) {
                    StringBuilder q = ic.q("Created new ");
                    q.append(b2.getClass());
                    q.toString();
                }
            }
            if (b2 instanceof d) {
                b2.b().b(false);
            }
            return b2;
        }
    }

    /* renamed from: il$d */
    public interface d {
        ll b();
    }

    /* renamed from: il$e */
    public interface e<T> {
        void a(T t);
    }

    public static <T extends d> k2<T> a(int i, b<T> bVar) {
        return new c(new m2(i), bVar, a);
    }

    public static <T> k2<List<T>> b() {
        return new c(new m2(20), new jl(), new kl());
    }
}
